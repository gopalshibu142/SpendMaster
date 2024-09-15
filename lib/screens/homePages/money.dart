import 'package:flutter/material.dart';

class MoneyPage extends StatefulWidget {
  const MoneyPage({super.key});

  @override
  State<MoneyPage> createState() => _MoneyPageState();
}

class _MoneyPageState extends State<MoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Text('Total Salary: 65515'),
          Text('creditcard bill: 5000'),
          Text('EMI: 10000'),
          Text('Total Expense: 15000'),
          Text('Balance: 50515'),
        ],
      ),
    );
  }
}
