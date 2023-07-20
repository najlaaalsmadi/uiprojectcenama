import 'package:cenimabooking/screens/details/CircleAvatarButton.dart';
import 'package:cenimabooking/screens/details/header.dart';
import 'package:cenimabooking/screens/details/cinemaseats.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class homebytackat extends StatefulWidget {
  @override
  const homebytackat({
    Key? key,
    required this.name,
    required this.description,
    required this.bannerurl,
    required this.posterurl,
    required this.vote,
    required this.launch_on,
    required this.numOfTarings,
  })
      : super(key: key);
  final String name, description, bannerurl, posterurl, vote, launch_on,numOfTarings;

  State<homebytackat> createState() => _homebytackatState();
}

class _homebytackatState extends State<homebytackat> {
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
                Header(name: widget.name, description: '', bannerurl: '', numOfTarings: '', posterurl: '', vote: '', launch_on: '',),
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
