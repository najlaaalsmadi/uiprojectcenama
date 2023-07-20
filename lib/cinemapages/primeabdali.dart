import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';

class PrimeAbdali extends StatefulWidget {
  const PrimeAbdali({Key? key}) : super(key: key);

  @override
  State<PrimeAbdali> createState() => _PrimeAbdaliState();
}

class _PrimeAbdaliState extends State<PrimeAbdali> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: seconderyColor,
        title: Text('Prime Cenima Abdali'),
        centerTitle: true,
      ),
    );
  }
}
