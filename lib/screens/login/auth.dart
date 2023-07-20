import 'package:cenimabooking/screens/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../pay/profile.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print('success in auth');

            return Profile(); // تعديل هنا لعرض الصفحة المطلوبة بعد تسجيل الدخول
          } else {
            print('failed in auth');
            return LoginScreen();
          }
        },
      ),
    );
  }
}
