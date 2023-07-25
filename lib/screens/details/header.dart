import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class Header extends StatefulWidget {
  @override
  const Header({
    Key? key,
    required this.name,
    required this.description,
    required this.bannerurl,
    required this.posterurl,
    required this.vote,
    required this.launch_on,
    required this.numOfTarings, required List trending,required this.cinemaName, required this.movieDate, required this.movieTime,
  })
      : super(key: key);
  final String name, description, bannerurl, posterurl, vote, launch_on,numOfTarings;
  final String cinemaName,movieTime,movieDate;

  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {

    return Container(
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
                  context.go(bottomNavPath);
                },
                color: Colors.white,
              ),
              Column(
                children: [
                  Text(
                    '${widget.cinemaName}',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),

              //احتمال احذفهم او اعدل عليهم بحيث ياخدو بيانات
              IconButton(
                onPressed: () {
                  // إجراء فتح التقويم
                },
                icon: Icon(Icons.calendar_today, color: Color(0xFF101238)),
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
                          widget.movieTime,
                          style: TextStyle(
                            fontSize: 16,
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
                          widget.movieDate,
                          style: TextStyle(
                            fontSize: 20,
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
