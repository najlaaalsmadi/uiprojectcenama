import 'package:flutter/material.dart';

import '../constants.dart';

class PrimeAlbaraka extends StatefulWidget {
  const PrimeAlbaraka({Key? key}) : super(key: key);

  @override
  State<PrimeAlbaraka> createState() => _PrimeAlbarakaState();
}

class _PrimeAlbarakaState extends State<PrimeAlbaraka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: seconderyColor,
        title: Text('Prime Cenima Albaraka'),
        centerTitle: true,
      ),
    );
  }
}
