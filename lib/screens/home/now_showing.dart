import 'package:cenimabooking/screens/details/details.dart';
import 'package:flutter/material.dart';
class NowShowingWidget extends StatelessWidget {
  final List trending;
  const NowShowingWidget({Key? key,required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: trending.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(7),
              width: 170,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://image.tmdb.org/t/p/w500' +
                                  trending[index]['poster_path']),
                          fit: BoxFit.cover
                      ),
                    ),
                    height: 200,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(left: 30,top:20,right: 30,bottom: 20),
                    child: MaterialButton(
                      height: 50,
                      minWidth: 70,
                      textColor: Colors.white,
                      shape: const StadiumBorder(),
                      color: Colors.lightBlue,
                      onPressed: (){
                        /* Navigator.push(
                          context,
                          MaterialPageRoute(
                             builder: (context) => DetailsScreen(
                                name: trending[index]['title'],
                                bannerurl:
                                'https://image.tmdb.org/t/p/w500' +
                                    trending[index]['backdrop_path'],
                                posterurl:
                                'https://image.tmdb.org/t/p/w500' +
                                    trending[index]['poster_path'],
                                description: trending[index]['overview'],
                                vote: trending[index]['vote_average']
                                    .toString(),
                                launch_on: trending[index]
                                ['release_date'], key: key,
                              )));*/

                      },child: const Text("Buy ticket",style: TextStyle(fontSize: 20,),),),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
