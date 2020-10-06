import 'package:flutter/material.dart';
import 'package:urban_dictionary_proto/networking_service.dart';
import 'package:urban_dictionary_proto/terms_page.dart';
import 'enter_term_page.dart';
import 'term.dart';
import 'term_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String searchTerm;
  List<Term> _terms = [];
  Term _selectedTerm;
  final networkingService = NetworkingService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Urban Dictionary Flutter',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Navigator(
        pages: [
          MaterialPage(
              key: EnterTermPage.valueKey,
              child: EnterTermPage(searchForTerm: _searchForTerm)),
          if (searchTerm != null && searchTerm.isNotEmpty && _terms.isNotEmpty)
            MaterialPage(
                key: TermsPage.valueKey,
                child: TermsPage(
                  title: searchTerm,
                  terms: _terms,
                  selectTerm: _onTermSelected,
                )),
          if (_selectedTerm != null)
            MaterialPage(
                key: TermDetailsPage.valueKey,
                child: TermDetailsPage(term: _selectedTerm))
        ],
        onPopPage: (route, result) {
          var pageKey = (route.settings as MaterialPage).key;

          if (pageKey == TermsPage.valueKey) {
            _terms.clear();
          }

          if (pageKey == TermDetailsPage.valueKey) {
            _selectedTerm = null;
          }

          return route.didPop(result);
        },
      ),
    );
  }

  void _searchForTerm(String term) async {
    final terms = await networkingService.defineTerm(term);

    setState(() {
      this.searchTerm = term;
      this._terms = terms;
      print(terms);
    });
  }

  void _onTermSelected(Term term) {
    setState(() {
      this._selectedTerm = term;
      print('selected ${term.word}');
    });
  }
}
