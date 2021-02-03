import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = TextEditingController();

  List<bool> _selection = [true, false, false];

  String tip;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (tip != null)
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Tip: $tip',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              Text("Total Amount"),
              SizedBox(
                width: 100,
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(hintText: '\$100.00'),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ToggleButtons(
                    children: [Text('10%'), Text('15%'), Text('20%')],
                    isSelected: _selection,
                    onPressed: updateSelection),
              ),
              FlatButton(
                onPressed: calculateTip,
                child: Text('CalculateTip'),
                color: Colors.green,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }

  void updateSelection(int selectedIndex) {
    setState(() {
      for (int i = 0; i < _selection.length; i++) {
        _selection[i] = selectedIndex == i;
      }
    });
  }

  void calculateTip() {
    final totalAmount = double.parse(controller.text);
    final selectedIndex = _selection.indexWhere((element) => element);
    final tipPercentage = [0.1, 0.15, 0.2][selectedIndex];

    final tipTotal = (totalAmount * tipPercentage).toStringAsFixed(2);

    setState(() {
      this.tip = '\$$tipTotal';
    });
  }
}
