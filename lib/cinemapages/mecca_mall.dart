import 'dart:core';

import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class MeccaCinema extends StatefulWidget {
  const MeccaCinema({Key? key}) : super(key: key);

  @override
  State<MeccaCinema> createState() => _MeccaCinemaState();
}

class _MeccaCinemaState extends State<MeccaCinema> {
  List trendingmovies = [];
  loadMovies() async {
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apiKey, readaccessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
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

  List<String> getNextThreeDaysTimes() {
    List<String> times = [];

    DateTime currentDate = DateTime.now();

    for (int i = 0; i <= trendingmovies.length; i++) {
      // Add 1 day to the current date for each iteration
      DateTime nextDay = currentDate.add(Duration(days: i));

      // Format the time as you desire (e.g., 'HH:mm')
      String formattedTime =
          '${nextDay.hour.toString().padLeft(2, '0')}:${nextDay.minute.toString().padLeft(2, '0')}';

      // Add the formatted time to the list
      times.add(formattedTime);
    }

    return times;
  }

  @override
  Widget build(BuildContext context) {
    List<String> times = getNextThreeDaysTimes();
    //DateTime currentDate = DateTime.now();
    //String formattedDate = '${currentDate.year}-${currentDate.month}-${currentDate.day}';
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: seconderyColor,
        title: Text('Prime Cenima Abdali'),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.all(2),
          child: Column(
            children: [
              Expanded(
                child: Container(
                    //height: MediaQuery.of(context).size.height * 0.86,
                    width: double.infinity,
                    child: ListView.builder(
                        //scrollDirection: Axis.horizontal,
                        itemCount: trendingmovies.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              /* Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                         builder: (context) => MoviesAbout(
                                            name: trendingmovies[index]['title'],
                                            bannerurl:
                                            'https://image.tmdb.org/t/p/w500' +
                                                trendingmovies[index]['backdrop_path'],
                                            posterurl:
                                            'https://image.tmdb.org/t/p/w500' +
                                                trendingmovies[index]['poster_path'],
                                            description: trendingmovies[index]['overview'],
                                            vote: trending[index]['vote_average']
                                                .toString(),
                                            launch_on: trendingmovies[index]
                                            ['release_date'], key: key,
                                          )));*/
                            },
                            child: Container(
                              margin: const EdgeInsets.all(7),
                              width: 170,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      trendingmovies[index]['title'] != null
                                          ? trendingmovies[index]['title']
                                          : 'Loading',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://image.tmdb.org/t/p/w500' +
                                                  trendingmovies[index]
                                                      ['poster_path']),
                                          fit: BoxFit.cover),
                                    ),
                                    height: 200,
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    child: Text(
                                      trendingmovies[index]['overview'],
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Text(
                                          ' ${times[index]}',
                                          style: TextStyle(fontSize: 24),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Text("14:00"),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
              ),
            ],
          )),
    );
  }
}
