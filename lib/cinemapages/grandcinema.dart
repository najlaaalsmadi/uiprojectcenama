import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
class GrandCinema extends StatefulWidget {
  const GrandCinema({Key? key}) : super(key: key);

  @override
  State<GrandCinema> createState() => _GrandCinemaState();
}

class _GrandCinemaState extends State<GrandCinema> {
  List trendingmovies = [];
  loadMovies() async{
    TMDB tmdbWithCustomLogs=TMDB(ApiKeys(apiKey, readaccessToken),
        logConfig: ConfigLogger(
            showLogs: true,
            showErrorLogs: true
        ));
    Map trendingresult= await tmdbWithCustomLogs.v3.trending.getTrending();
    print((trendingresult));
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
    return Scaffold(
      body: ListView(
        children: [
          Container(width: double.infinity,height: 100,alignment:Alignment.center,
            child: Image.asset("assets/images/grandcinema.png"),),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10,bottom: 20,left: 10,),
            child: Text("Welcome \n Grand Cinema City Mall"),),
          Container( height: 270,
            child: ListView.builder(itemBuilder: (context,index){
              return InkWell(
                onTap:(){

                } ,

              );
            }),
          )
        ],
      ),
    );
  }
}
