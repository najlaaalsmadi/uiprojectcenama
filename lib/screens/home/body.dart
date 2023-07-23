import 'package:cenimabooking/constants.dart';
import 'package:cenimabooking/screens/home/moviesposter.dart';
import 'package:cenimabooking/screens/home/search_feild.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black38,
                  radius: 30,
                  backgroundImage: AssetImage(
                      'assets/images/logo.png'), // تعيين صورة الشعار هنا
                ),
                Column(children: [
                  const Row(
                    children: [
                      Text("Hello",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors
                                  .white)), //beside hello we will insert the name
                      // Icon(
                      //   Icons.waving_hand,
                      //   color: Colors.yellow,
                      // ),
                    ],
                  ),
                  Text(
                    "Book your favorite movie",
                    style: TextStyle(
                        fontSize: 10, color: Colors.blueGrey.shade800),
                  )
                ]),
                const SizedBox(
                  width: 20,
                ),
                // CircleAvatar(
                //     backgroundColor: Colors.black38,
                //     radius: 30,
                //     child: IconButton(
                //         onPressed: () {},
                //         icon: const Icon(Icons.notifications_none_outlined))),
              ],
            ),
            SearchWidget(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              alignment: Alignment.centerLeft,
              child: const Row(
                children: [
                  Text(
                    "Now",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    " Showing",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            MoviePoster(trending: trendingmovies),
            Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
                child: Text("Search By City",style: TextStyle(fontSize: 20,color: Colors.white),)),
            SizedBox(height: 10,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(decoration: BoxDecoration(color: labelsColor,borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(left: 10),
                    child: TextButton(onPressed: (){
                      context.go(irbidCategoryPath);
                    }, child: Text("Irbid",style: TextStyle(fontSize: 20,color: Colors.white),),)),
                SizedBox(width: 20,),
                Container(decoration: BoxDecoration(color: labelsColor,borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(left: 10),
                    child: TextButton(onPressed: (){
                      context.go(ammanCategoryPath);
                    }, child: Text("Amman",style: TextStyle(fontSize: 20,color: Colors.white),),)),
            ],),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TextButton(
                    onPressed: () {
                      context.go(GrandCinemaPath);
                    },
                    child: const Text(
                      "Grand Cinema City Mall",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ))),
            MoviePoster(
              trending: trendingmovies,
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TextButton(
                    onPressed: () {
                      context.go(AbdaliCinemaPath);
                    },
                    child: const Text(
                      "Prime Cinema Abdali",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ))),
            MoviePoster(
              trending: trendingmovies,
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TextButton(
                    onPressed: () {
                      context.go(AlbarakaCinemaPath);
                    },
                    child: const Text(
                      "Prime Cinema ALbaraka Mall",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ))),
            MoviePoster(
              trending: trendingmovies,
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TextButton(
                    onPressed: () {
                      context.go(IrbidCinemaPath);
                    },
                    child: const Text(
                      "Prime Cinema Irdid",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ))),
            MoviePoster(
              trending: trendingmovies,
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TextButton(
                    onPressed: () {
                      context.go(MeccaCinemaPath);
                    },
                    child: const Text(
                      "Mecca Mall Cinema",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ))),
            MoviePoster(
              trending: trendingmovies,
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TextButton(
                    onPressed: () {
                      context.go(TajCinemaPath);
                    },
                    child: const Text(
                      "Taj Mall Cinema",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ))),
            MoviePoster(
              trending: trendingmovies,
            ),
          ],
        ),
      ),
    );
  }
}
