import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class AmmanCategory extends StatelessWidget {
  const AmmanCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: mainColor,
      body: Column(children: [
        SizedBox(height: 10,),
        Container(
            alignment: Alignment.centerLeft,
            child: IconButton(onPressed: (){context.go(bottomNavPath);}, icon: Icon(Icons.arrow_back,color: Colors.white,))),
        Text("All Cinema in Amman",style: TextStyle(fontSize: 20,color: Colors.white),),
        SizedBox(height: 20,),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: labelsColor,
            ),
            child: Column(children: [
              TextButton(onPressed: (){
                context.go(AbdaliCinemaPath);
              }, child: Text("Prime Cinema Abdali",style: TextStyle(fontSize: 20,color: Colors.white),)),
              TextButton(onPressed: (){
                context.go(AlbarakaCinemaPath);
              }, child: Text("Prime Cinema Amman",style: TextStyle(fontSize: 20,color: Colors.white),)),
              TextButton(onPressed: (){
                context.go(GrandCinemaPath);
              }, child: Text("Grand Cinema City Mall",style: TextStyle(fontSize: 20,color: Colors.white),)),
              TextButton(onPressed: (){
                context.go(TajCinemaPath);
              }, child: Text("Taj Mall Cinema",style: TextStyle(fontSize: 20,color: Colors.white),)),
              TextButton(onPressed: (){
                context.go(MeccaCinemaPath);
              }, child: Text("Mecca Mall Cinema",style: TextStyle(fontSize: 20,color: Colors.white),)),
            ],),
          ),
        ),

      ],),
    ));
  }
}
