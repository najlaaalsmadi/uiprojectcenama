import 'package:cenimabooking/screens/details/CircleAvatarButton.dart';
import 'package:cenimabooking/screens/details/header.dart';
import 'package:cenimabooking/screens/details/cinemaseats.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class homebytackat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => SeatAvailabilityModel(initialValue: 'initialValue'),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF101238),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Header(),
                CircleAvatarButtonsRow(),
                CinemaSeats(),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
