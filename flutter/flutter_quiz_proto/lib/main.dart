import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class FlashCard {
  final String question;
  final String answer;

  FlashCard({this.question, this.answer});
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class FlashCardView extends StatelessWidget {
  final String text;

  FlashCardView({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
          width: 250,
          height: 250,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          )),
      elevation: 8,
    );
  }
}

class _MyAppState extends State<MyApp> {
  List<FlashCard> _flashCards = [
    FlashCard(
        question: "What programming language does Flutter use?",
        answer: "Dart"),
    FlashCard(
        question:
            "What feature allows developers to see their UI changes immediately after saving a file?",
        answer: "Hot Reload"),
    FlashCard(
        question: "How many Flutter jobs are currently listed on LinkedIn?",
        answer: "5000+")
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
                front: FlashCardView(text: _flashCards[_currentIndex].question),
                back: FlashCardView(text: _flashCards[_currentIndex].answer)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlineButton.icon(
                    onPressed: previousCard,
                    icon: Icon(Icons.chevron_left),
                    label: Text('Prev')),
                OutlineButton.icon(
                    onPressed: nextCard,
                    icon: Icon(Icons.chevron_right),
                    label: Text('Next')),
              ],
            )
          ],
        ),
      )),
    );
  }

  void nextCard() {
    setState(() {
      _currentIndex =
          _currentIndex + 1 < _flashCards.length ? _currentIndex + 1 : 0;
    });
  }

  void previousCard() {
    setState(() {
      _currentIndex =
          _currentIndex - 1 >= 0 ? _currentIndex - 1 : _flashCards.length - 1;
    });
  }
}
