import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:spendmaster/screens/homePages/money.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController = PageController();
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: const Color(0xff150050),
          title: const Text('Spend Master'),
          actions: [],
        ),
       //65515
        body: PageView(
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;

            });
          },
          controller: _pageController,
          children: [
            Container(
              child: const Center(
                child: Text('Profile Page'),
              ),
            ),
            Container(
              child: const Center(
                child: Text('Home Page'),
              ),
            ),
            Container(
              child: const Center(
                child: Text('Favourite Page'),
              ),
            ),
           MoneyPage(),
          ],
        ),
        bottomNavigationBar: CircleNavBar(

         color: Color(0xff150050),
        circleColor: Colors.white,
        height: 60,
        circleWidth: 60,
        activeIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
          });
        },
        activeIcons: const [
          Icon(Icons.person, color: Colors.deepPurple,size: 30,),
          Icon(Icons.home, color: Colors.deepPurple,size: 30,),
          Icon(Icons.favorite, color: Colors.deepPurple,size: 30,),
          Icon(Icons.money, color: Colors.deepPurple,size: 30,),
        ],
        inactiveIcons: const [
          Icon(Icons.person, color: Colors.deepPurple),
          Icon(Icons.home, color: Colors.deepPurple),
          Icon(Icons.favorite, color: Colors.deepPurple),
          Icon(Icons.money, color: Colors.deepPurple),
        ],
          
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            Navigator.pushNamed(context, '/scan');
          },
          child: const Icon(Icons.qr_code_scanner),
          backgroundColor: Colors.deepPurple,
        )
        );

  }
}
