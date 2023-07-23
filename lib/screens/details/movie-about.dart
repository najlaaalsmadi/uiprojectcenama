import 'package:cenimabooking/screens/details/homebytackat.dart';
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
    required this.cinemaName
  }) : super(key: key);

  final String name, description, bannerurl, posterurl, vote, launch_on, numOfTarings,cinemaName;

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
          '${nextDay.day.toString().padLeft(2, '0')}/${nextDay.month.toString().padLeft(2, '0')}';

      times.add(formattedTime);
    }

    return times.toSet().toList();
  }
  final List<String> grandcinema = [
    '15:00', '18:00', '20:00'
  ];
  String selectedTime='';
  String selectedDate='';


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
            BottomNavigationBar(
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
                      widget.vote,
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
                    const SizedBox(height: 5),
                    Text(
                      widget.numOfTarings,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                    const Text(
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
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color:  Color(0xffffffff),
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
                              child: const Center(
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
                            const Text(
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
                              style: const TextStyle(
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
                            const Text(
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
          Positioned(
            left: 0 * fem,
            child: Container(
              width: 400 * fem,
              height: 79 * fem,
              decoration: const BoxDecoration(
                color: Color(0xff1e283d),
              ),
              child:TextButton(
                onPressed: () {

                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0.5 * fem, 0 * fem),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                        width: 40 * fem,
                        height: 24 * fem,
                        child:  Icon(
                          Icons.movie_filter_rounded,color:Colors.orange.shade600 ,
                        ),
                      ),
                      Text(
                        'By cinema',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          height: 1.1428571429 / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //////////////////////////////////////////////////////**** List View ****///////////////////////////////////////////////////////////////////////////////////////////////////////
          Positioned(
            top: 110 * fem,
            child: Container(
              color: mainColor,
              child: Container(
                //alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(31 * fem, 16 * fem, 0 * fem, 17 * fem),
                height: 400*fem,
                child:
                    //////////////////////////////////////////////////////**** rest of the item ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                    Column(
                      children: [
                        Align(
                          child: Text(
                            widget.cinemaName,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 1.7142857143 / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          height: 18 * fem,
                          padding: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 40 * fem,
                                height: double.infinity,
                                child: Center(
                                  child: Text(
                                    'price:',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2857142857 / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 21 * fem,
                              ),
                              SizedBox(
                                width: 40 * fem,
                                height: double.infinity,
                                child: Center(
                                  child: Text(
                                    '8 JD',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2857142857 / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        /////////////////here row for time and date///////////////////
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0 * fem, 4 * fem),
                          width: 200*fem,
                          child: PopupMenuButton<String>(
                            initialValue: selectedDate,
                            itemBuilder: (BuildContext context) {
                              return times.map((String dates) {
                                return PopupMenuItem<String>(
                                  value: dates,
                                  child: Text(dates),
                                );
                              }).toList();
                            },
                            onSelected: (String? newValue1) {
                              setState(() {
                                selectedDate = newValue1!;
                              });
                            },
                            child: ListTile(
                              title: Text('Selected date:\n ${selectedDate ?? "None"}',style: TextStyle(color: Colors.white),),
                              trailing: Icon(Icons.arrow_drop_down,color: labelsColor,),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0 * fem, 4 * fem),
                          width: 200*fem,
                          child: PopupMenuButton<String>(
                            initialValue: selectedTime,
                            itemBuilder: (BuildContext context) {
                              return grandcinema.map((String time) {
                                return PopupMenuItem<String>(
                                  value: time,
                                  child: Text(time),
                                );
                              }).toList();
                            },
                            onSelected: (String? newValue) {
                              setState(() {
                                selectedTime = newValue!;
                              });
                            },
                            child: ListTile(
                              title: Text('Selected Time: ${selectedTime ?? "None"}',style: TextStyle(color: Colors.white),),
                              trailing: Icon(Icons.arrow_drop_down,color: labelsColor,),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //////////////////////////////////////////////////////**** Time column ****///////////////////////////////////////////////////////////////////////////////////////////////////////

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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => homebytackat(
                      cinemaName: widget.cinemaName,
                      movieDate:selectedDate,
                      movieTime:selectedTime, name: widget.name,
                      description:widget.description, bannerurl:widget.bannerurl,
                      posterurl: widget.posterurl, vote: widget.vote,
                      launch_on: widget.launch_on, numOfTarings: widget.numOfTarings ,)));
                  },
                  child: const Text(
                    'Select session',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffffff),
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
