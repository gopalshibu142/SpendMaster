import 'package:flutter/material.dart';
import 'package:spendmaster/screens/home.dart';
import 'package:spendmaster/screens/scan_qr.dart';
import 'package:spendmaster/screens/upi.dart';

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
      theme: ThemeData.dark(),
      routes: {
        '/home': (context) => const Home(),
        '/scan': (context) => const QRScanner(),
        '/upi': (context) => const UPIPage(),
      },
      initialRoute: '/home',
    );
  }
}