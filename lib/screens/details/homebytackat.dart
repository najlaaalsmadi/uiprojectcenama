import 'package:cenimabooking/constants.dart';
import 'package:cenimabooking/screens/details/CircleAvatarButton.dart';
import 'package:cenimabooking/screens/details/header.dart';
import 'package:cenimabooking/screens/details/cinemaseats.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tmdb_api/tmdb_api.dart';



class homebytackat extends StatefulWidget {
  @override
   const homebytackat({
    required this.name,
    required this.description,
    required this.bannerurl,
    required this.posterurl,
    required this.vote,
    required this.launch_on,
    required this.numOfTarings,
     required this.cinemaName,super.key, required this.movieTime, required this.movieDate});
  final String name, description, bannerurl, posterurl, vote, launch_on,numOfTarings;
  final String cinemaName,movieTime,movieDate;

  State<homebytackat> createState() => _homebytackatState();
}

class _homebytackatState extends State<homebytackat> {
  List trendingmovies = [];
  loadMovies() async{
    TMDB tmdbWithCustomLogs=TMDB(ApiKeys(apiKey, readaccessToken),
        logConfig: const ConfigLogger(
            showLogs: true,
            showErrorLogs: true
        ));
    Map trendingresult= await tmdbWithCustomLogs.v3.trending.getTrending();
    //print((trendingresult));
    setState(() {
      trendingmovies = trendingresult['results'];

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadMovies();

  }

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
                Header(name: widget.name, trending: trendingmovies, description: widget.description,
                  bannerurl:widget.bannerurl , posterurl: widget.posterurl, vote: widget.vote,
                  launch_on: widget.launch_on, numOfTarings: widget.numOfTarings,
                  cinemaName: widget.cinemaName,movieDate:widget.movieDate,movieTime:widget.movieTime,
                ),
                 CircleAvatarButtonsRow(),
                CinemaSeats(cinemaName: widget.cinemaName, movieName: widget.name,movieDate:widget.movieDate,movieTime:widget.movieTime,),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
