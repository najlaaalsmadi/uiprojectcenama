import 'package:cenimabooking/constants.dart';
import 'package:cenimabooking/screens/details/movie-about.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdb_api/tmdb_api.dart';

class PrimeAlbaraka extends StatefulWidget {
  const PrimeAlbaraka({Key? key}) : super(key: key);

  @override
  State<PrimeAlbaraka> createState() => _PrimeAlbarakaState();
}

class _PrimeAlbarakaState extends State<PrimeAlbaraka> {
  List trendingmovies = [];
  loadMovies() async {
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apiKey, readaccessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();

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

    for (int i = 0; i < 3; i++) {
      // Add 1 day to the current date for each iteration
      DateTime nextDay = currentDate.add(Duration(days: i));

      // Format the time as you desire (e.g., 'HH:mm')
      String formattedTime =
          '${nextDay.day.toString().padLeft(2, '0')}/${nextDay.month.toString().padLeft(2, '0')}/${nextDay.year.toString()}';

      // Add the formatted time to the list
      times.add(formattedTime);
    }

    return times;
  }

  @override
  Widget build(BuildContext context) {
    List<String> times = getNextThreeDaysTimes();
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        context.go(bottomNavPath);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text("Welcome to Prime Cinema Irbid"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: trendingmovies.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MoviesAbout(
                              name: trendingmovies[index]['title'],
                              bannerurl: 'https://image.tmdb.org/t/p/w500' +
                                  trendingmovies[index]['backdrop_path'],
                              posterurl: 'https://image.tmdb.org/t/p/w500' +
                                  trendingmovies[index]['poster_path'],
                              description: trendingmovies[index]['overview'],
                              vote: trendingmovies[index]['vote_average']
                                  .toString(),
                              launch_on: trendingmovies[index]['release_date'],
                              numOfTarings: '',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1,
                              color: labelsColor // Set the color of the border
                              ),
                          boxShadow: [
                            BoxShadow(
                              color: labelsColor.withOpacity(
                                  0.2), // Set the color of the shadow
                              blurRadius:
                                  4, // Set the blur radius of the shadow
                              spreadRadius:
                                  2, // Set the spread radius of the shadow
                              offset:
                                  Offset(0, 5), // Set the offset of the shadow
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.all(9),
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
                            const SizedBox(height: 2),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                        trendingmovies[index]['poster_path'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
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
                                    ' ${times[0]}',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(child: Text("14:00")),
                                      Expanded(child: Text("16:00")),
                                      Expanded(child: Text("18:00")),
                                    ],
                                  ),
                                  Text(
                                    ' ${times[1]}',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(child: Text("14:00")),
                                      Expanded(child: Text("16:00")),
                                      Expanded(child: Text("18:00")),
                                    ],
                                  ),
                                  Text(
                                    ' ${times[2]}',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(child: Text("14:00")),
                                      Expanded(child: Text("16:00")),
                                      Expanded(child: Text("18:00")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
