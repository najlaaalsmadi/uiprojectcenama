import 'package:cenimabooking/constants.dart';
import 'package:cenimabooking/screens/details/movie-about.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String currentTime = DateFormat('hh:mm a').format(DateTime(2023, 7, 5, 10, 30));
    String currentDate = DateFormat('yyyy-MM-dd').format(DateTime(2023, 7, 5));

    return  Container(
      height: 120,
      color: Color(0xFF101238),
      child: Column(
        children: [
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoviesAbout(name: '', description: '', launch_on: '', vote: '', bannerurl: '', posterurl: '',),
                    ),
                  );
                },
                color: Colors.white,
              ),
              Column(
                children: [
                  Text(
                    "اسم سينما",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "اسم الفيلم",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  // إجراء فتح التقويم
                },
                icon: Icon(Icons.calendar_today, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 2.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 120,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // إجراء فتح وقت العرض
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.query_builder_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          currentTime,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Center(
                child: Container(
                  width: 120,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // إجراء فتح التاريخ
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        Text(
                          currentDate,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
