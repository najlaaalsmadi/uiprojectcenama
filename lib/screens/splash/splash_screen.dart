import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/_Photo .png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(child: Container()), // يتمدد لتعبئة المساحة الفارغة
              Text('Splash!!', style: TextStyle(fontSize: 24, color: Colors.white)),
              ElevatedButton(
                onPressed: () {
                  context.go(bottomNavPath);
                },
                child: Text('Go to Home'),
              ),
              Expanded(child: Container()), // يتمدد لتعبئة المساحة الفارغة
            ],
          ),
        ),
      ),
    );
  }
}
