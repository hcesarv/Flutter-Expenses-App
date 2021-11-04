import 'package:flutter/material.dart';
import 'package:personal_expenses_app/transaction.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id:'T1', title:'SSD', amount: 54.95, date: DateTime.now(),
    ),
    Transaction(
      id:'T2', title:'Keyboard', amount: 79.95, date: DateTime.now(),
    ),
    Transaction(
      id:'T3', title:'Ryzen 9', amount: 214.95, date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.red,
              child: Text('Chart'), elevation: 5,
            ),
          ),
          Card(
            color: Colors.indigo,
            child: Text('List of TX'),
          ),
        ],
      ),
    );
  }
}
