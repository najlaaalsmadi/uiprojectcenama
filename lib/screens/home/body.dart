import 'package:cenimabooking/constants.dart';
import 'package:cenimabooking/screens/home/moviesposter.dart';
import 'package:cenimabooking/screens/home/now_showing.dart';
import 'package:cenimabooking/screens/home/search_feild.dart';
import 'package:cenimabooking/screens/pay/profile-empty.dart';
import 'package:cenimabooking/screens/pay/profile.dart';
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
  loadMovies() async{
    TMDB tmdbWithCustomLogs=TMDB(ApiKeys(apiKey, readaccessToken),
        logConfig: const ConfigLogger(
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
      //extendBody: true,
      backgroundColor: Colors.blue.shade900,
      body: ListView(
          children: [
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    // انتقل إلى صفحة الملف الشخصي (PROFILE)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile_Empty(),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    // logo for app
                    backgroundColor: Colors.black38,
                    radius: 30,
                  ),
                ),

                Column(
                  children:[
                const Row(
                  children: [
                    Text("Hello",style: TextStyle(fontSize: 15,color: Colors.white)),//beside hello we will insert the name
                     Icon(Icons.waving_hand,color: Colors.yellow,),
                  ],
                ),
                    Text("Book your favorite movie",style: TextStyle(fontSize: 10,color: Colors.blueGrey.shade800),)
                ]),
                const SizedBox(width: 20,),
                CircleAvatar(
                    backgroundColor:Colors.black38,
                    radius: 30,
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_outlined))),
              ],),
            //SearchWidget(),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
               // onChanged: _onSearchTextChanged,
                decoration: InputDecoration(
                  prefixIcon: IconButton(onPressed:(){

                  },icon: const Icon(Icons.search,color: Colors.grey,)),
                  //suffix: IconButton(onPressed: ()=>_searchController.clear(),
                  // icon: const Icon(Icons.clear,color: Colors.grey,)),
                  suffixIcon: const Icon(Icons.interests_outlined,color: Colors.grey,),
                  fillColor: Colors.black38,
                  filled: true,
                  hintText: "Search movie",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:   BorderSide.none,
                  ),
                ),),
            ),

            const SizedBox(height: 10,),
  Container(
    margin:const EdgeInsets.only(left: 30),
    alignment: Alignment.centerLeft,
    child: const Row(children: [
        Text("Now",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
        Text(" Showing",style: TextStyle(fontSize: 20,color: Colors.white),),
    ],),
  ),
    const SizedBox(height: 15,),
    //NowShowingWidget(trending: trendingmovies,),
            MoviePoster(trending: trendingmovies),
            const SizedBox(height: 30,),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(10),
                child: TextButton(onPressed:(){},
                    child:const Text("Grand Cinema City Mall",style: TextStyle(fontSize: 22,color: Colors.white),))),
            const SizedBox(height: 10,),
            MoviePoster(
              trending: trendingmovies,
            ),
            const SizedBox(height: 20,),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(10),
                child: TextButton(onPressed:(){},
                    child: const Text("Prime Cinema Abdali",style: TextStyle(fontSize: 22,color: Colors.white),))),
            const SizedBox(height: 10,),
            MoviePoster(
              trending: trendingmovies,
            ),
            const SizedBox(height: 20,),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(10),
                child: TextButton(onPressed:(){},
                    child: const Text("Prime Cinema ALbaraka Mall",style: TextStyle(fontSize: 22,color: Colors.white),))),
            const SizedBox(height: 10,),
            MoviePoster(
              trending: trendingmovies,
            ),
            const SizedBox(height: 20,),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(10),
                child: TextButton(onPressed:(){},
                    child: const Text("Prime Cinema Irdid",style: TextStyle(fontSize: 22,color: Colors.white),))),
            const SizedBox(height: 10,),
            MoviePoster(
              trending: trendingmovies,
            ),
            const SizedBox(height: 20,),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(10),
                child: TextButton(onPressed:(){
                  context.go(MeccaCinemaPath);
                },
                    child: const Text("Mecca Mall Cinema",style: TextStyle(fontSize: 22,color: Colors.white),))),
            const SizedBox(height: 10,),
            MoviePoster(
              trending: trendingmovies,
            ),
            const SizedBox(height: 20,),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(10),
                child: TextButton(onPressed:(){},
                    child: const Text("Taj Mall Cinema",style: TextStyle(fontSize: 22,color: Colors.white),))),
            const SizedBox(height: 10,),
            MoviePoster(
              trending: trendingmovies,
            ),



          ],),
    );
  }


 
}



