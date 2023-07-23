import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoviesAbout extends StatefulWidget {
  const MoviesAbout({
    Key? key,
    required this.name,
    required this.description,
    required this.bannerurl,
    required this.posterurl,
    required this.vote,
    required this.launch_on,
    required this.numOfTarings,
  }) : super(key: key);

  final String name, description, bannerurl, posterurl, vote, launch_on, numOfTarings;

  @override
  State<MoviesAbout> createState() => _MoviesAboutState();
}

class _MoviesAboutState extends State<MoviesAbout> {
  double fem = 0;

  int pageIndex = 0;
  Color mainColor = const Color(0xff1a2232);
  Color seconderyColor = const Color(0xb21e283d);
  Color labelsColor = const Color(0xff637393);

  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  List<String> getNextThreeDaysTimes() {
    List<String> times = [];

    DateTime currentDate = DateTime.now();

    for (int i = 0; i < 3; i++) {
      DateTime nextDay = currentDate.add(Duration(days: i));

      String formattedTime =
          '${nextDay.day.toString().padLeft(2, '0')}/${nextDay.month.toString().padLeft(2, '0')}/${nextDay.year.toString()}';

      times.add(formattedTime);
    }

    return times.toSet().toList();
  }

  String selectedDate = '19';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double baseWidth = 360;
    fem = screenWidth / baseWidth;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: seconderyColor.withOpacity(1),
        elevation: 0,
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ////////////////////////////////////////////////////**** top navigation bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
            Container(
              child: BottomNavigationBar(
                selectedItemColor: const Color(0xffff7f36),
                unselectedItemColor: labelsColor,
                backgroundColor: seconderyColor.withOpacity(1),
                selectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                unselectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                onTap: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                currentIndex: pageIndex,
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(icon: SizedBox(width: 0, height: 0), label: "About"),
                  BottomNavigationBarItem(icon: SizedBox(width: 0, height: 0), label: "Sessions")
                ],
              ),
            ),
            Container(
              color: Colors.black,
              width: double.maxFinite,
              height: 615 * fem,
              child: pageIndex == 0 ? openAbout() : openSessions(),
            )
          ],
        ),
      ),
    );
  }

  Widget openAbout() {
    return Column(
      children: [
        //////////////////////////////////////////////////////**** Movie image ****///////////////////////////////////////////////////////////////////////////////////////////////////////
        Image.network(
          widget.posterurl,
          width: double.infinity,
          height: 200 * fem,
        ),
        //////////////////////////////////////////////////////**** Rating bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
        Container(
          color: mainColor,
          //margin: const EdgeInsets.fromLTRB(0, 5, 0, 12),
          padding: EdgeInsets.fromLTRB(0 * fem, 0, 0, 0),
          width: double.infinity,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //////////////////////////////////////////////////////**** Rating ****///////////////////////////////////////////////////////////////////////////////////////////////////////
              Container(
                margin: const EdgeInsets.fromLTRB(0, 9, 0, 12),
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${widget.vote.toString()}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Rating',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xff637393)),
                    ),
                  ],
                ),
              ),

              //////////////////////////////////////////////////////**** Number of ratings ****///////////////////////////////////////////////////////////////////////////////////////////////////////
              Container(
                margin: const EdgeInsets.fromLTRB(0, 6, 0, 12),
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      "${widget.numOfTarings}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                    Text(
                      'Number Of Ratings',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff637393),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //////////////////////////////////////////////////////**** Description ****///////////////////////////////////////////////////////////////////////////////////////////////////////
        Expanded(
          child: Container(
            color: mainColor,
            padding: EdgeInsets.fromLTRB(16 * fem, 40 * fem, 20 * fem, 0 * fem),
            width: 375 * fem,
            height: 280 * fem,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                ),
                SizedBox(height: 10 * fem),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 184 * fem, 8 * fem),
                        width: double.infinity,
                        height: 25 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 29 * fem, 0),
                              child: const Text(
                                'Certificate',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff637393),
                                ),
                              ),
                            ),
                            Container(
                              width: 38 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0x196d9eff)),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Text(
                                  "+16",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 190 * fem, 11 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 40 * fem, 0),
                              child: const Text(
                                'Runtime',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff637393),
                                ),
                              ),
                            ),
                            Text(
                              "1:55",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 194 * fem, 11),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 33 * fem, 0),
                              child: const Text(
                                'Release',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff637393),
                                ),
                              ),
                            ),
                            Text(
                              widget.launch_on,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 91 * fem, 11 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 55 * fem, 0),
                              child: const Text(
                                'Genre',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff637393),
                                ),
                              ),
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget openSessions() {
    List<String> times = getNextThreeDaysTimes();
    return Container(
      height: double.infinity,
      color: mainColor,
      child: Stack(
        children: [
          ////////////////////////////////////////////////////**** Filter bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
          Positioned(
            left: 0 * fem,
            child: Container(
              width: 400 * fem,
              height: 79 * fem,
              decoration: BoxDecoration(
                color: const Color(0xff1e283d),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //////////////////////////////////////////////////////**** date icon ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                  Container(
                    padding: EdgeInsets.fromLTRB(36.5 * fem, 19 * fem, 36.5 * fem, 5 * fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: 18 * fem,
                          height: 18 * fem,
                          child: Image.asset(
                            'assets/images/calendar-B83.png',
                            width: 18 * fem,
                            height: 18 * fem,
                          ),
                        ),
                        DropdownButton<String>(
                          dropdownColor: seconderyColor,
                          value: selectedDate,
                          onChanged: (newValue) {
                            setState(() {
                              selectedDate = newValue!;
                            });
                          },
                          items: [
                            '19','20','21',
                            /*
                            times[0],
                            times[1],
                            times[2],*/

                          ].map<DropdownMenuItem<String>>(
                                (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1428571429 / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 60 * fem),
                  //////////////////////////////////////////////////////**** By Cenama icon ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10.5 * fem, 20 * fem, 0.5 * fem, 0 * fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 4 * fem),
                            width: 40 * fem,
                            height: 24 * fem,
                            child: Image.asset(
                              'assets/images/option-yTD.png',
                              width: 40 * fem,
                              height: 24 * fem,
                            ),
                          ),
                          Text(
                            'By cinema',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 1.1428571429 / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //////////////////////////////////////////////////////**** labels bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
          Positioned(
            top: 90,
            child: Container(
              width: 440,
              height: 30 * fem,
              color: const Color(0xff253454),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 35 * fem),
                  Text(
                    'Time',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.1666666667 / fem,
                      color: Color(0xff637393),
                    ),
                  ),
                  SizedBox(width: 60 * fem),
                  Text(
                    'Adult',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.1666666667 / fem,
                      color: Color(0xff637393),
                    ),
                  ),
                  SizedBox(width: 25 * fem),
                  Text(
                    'Child',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.1666666667 / fem,
                      color: Color(0xff637393),
                    ),
                  ),
                  SizedBox(width: 25 * fem),
                  Text(
                    'Student',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.1666666667 / fem,
                      color: Color(0xff637393),
                    ),
                  ),
                  SizedBox(width: 20 * fem),
                  Text(
                    'VIP',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.1666666667 / fem,
                      color: Color(0xff637393),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //////////////////////////////////////////////////////**** List View ****///////////////////////////////////////////////////////////////////////////////////////////////////////
          Positioned(
            top: 110 * fem,
            child: Container(
              color: mainColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(31 * fem, 16 * fem, 0 * fem, 17 * fem),
                    height: 90 * fem,
                    child: Row(
                      children: [
                        //////////////////////////////////////////////////////**** Time column ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                          //alignment: Alignment.center,
                          child: const Text(
                            '14:40',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        SizedBox(width: 30 * fem),
                        //////////////////////////////////////////////////////**** rest of the item ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                        Column(
                          children: [
                            Align(
                              child: Text(
                                'Prime Cinema Abdali',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  height: 1.7142857143 / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              height: 18 * fem,
                              padding: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 0 * fem),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40 * fem,
                                    height: double.infinity,
                                    child: Center(
                                      child: Text(
                                        'price:',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2857142857 / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 21 * fem,
                                  ),
                                  Container(
                                    width: 40 * fem,
                                    height: double.infinity,
                                    child: Center(
                                      child: Text(
                                        '8 JD',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2857142857 / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 620,
            child: Container(
              padding: EdgeInsets.fromLTRB(16 * fem, 0, 30 * fem, 16 * fem),
              width: 375 * fem,
              height: 70 * fem,
              color: const Color(0xb21e283d),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade600,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: MaterialButton(
                  onPressed: () {
                    context.go(HomebytackatPath);
                  },
                  child: Text(
                    'Select session',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
