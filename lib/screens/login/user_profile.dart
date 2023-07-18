


import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({super.key});

  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         children: [
           Text("You are not sign In"),
           MaterialButton(onPressed: (){
             context.go(loginScreenPath);
           },child: Text("go to login"),),

         ],
       ),
     ),
    );
  }
}
