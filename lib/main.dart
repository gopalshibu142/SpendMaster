import 'package:flutter/material.dart';
import 'package:spendmaster/screens/home.dart';

void main() {
  runApp(SpendMaster());
}

class SpendMaster extends StatelessWidget {
  const SpendMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spend Master',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const Home(),
      },
      initialRoute: '/',
    );
  }
}