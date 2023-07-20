import 'package:cenimabooking/constants.dart';
import 'package:cenimabooking/screens/home/home.dart';
import 'package:cenimabooking/screens/login/login.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  final screens = const [
    HomeScreen(),
    LoginScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        color: Colors.white,
        size: 40,
      ),
      const Icon(
        Icons.perm_contact_cal_outlined,
        color: Colors.white,
        size: 40,
      ),
    ];
    return Scaffold(
      extendBody: true,
      //backgroundColor: ,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.easeIn,
          buttonBackgroundColor: labelsColor,
          color: seconderyColor,
          backgroundColor: Colors.transparent,
          height: 75,
          items: items,
          index: index,
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
      body: screens[index],
    );
  }
}
