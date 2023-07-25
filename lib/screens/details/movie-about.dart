import 'package:flutter/material.dart';
import 'package:cenimabooking/screens/details/homebytackat.dart';

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
    required this.cinemaName,
  }) : super(key: key);

  final String name, description, bannerurl, posterurl, vote, launch_on, numOfTarings, cinemaName;

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

  final List<String> grandcinema = ['15:00', '18:00', '20:00'];
  String selectedTime = '';
  String selectedDate = '';

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
        Image.network(
          widget.posterurl,
          width: double.infinity,
          height: 200 * fem,
        ),
        Container(
          color: mainColor,
          padding: EdgeInsets.fromLTRB(0 * fem, 0, 0, 0),
          width: double.infinity,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                    color: Color(0xffffffff),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 * fem),
            child: Card(
              color: seconderyColor,
              child: Padding(
                padding: EdgeInsets.all(16 * fem),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.cinemaName,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Price: 8 JD',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16 * fem),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0 * fem, 4 * fem),
                      width: 200 * fem,

                      child: ListTile(

                        title: Text(
                          'Selected date:\n ${selectedDate ?? "None"}',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          color: labelsColor,
                        ),
                        onTap: () {
                          showDatePopup(context, times);
                        },

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0 * fem, 4 * fem),
                      width: 200 * fem,
                      child: ListTile(
                        title: Text(
                          'Selected Time: ${selectedTime ?? "None"}',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          color: labelsColor,
                        ),
                        onTap: () {
                          showTimePopup(context);
                        },
                      ),
                    ),
                    // ... Rest of the code ...

                    SizedBox(height: 24 * fem),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          if (selectedDate == null || selectedTime == null) {
                            // Show an alert or display a message to prompt the user to select a date and time.
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Please select both date and time'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            // Both date and time are selected, navigate to the next page.
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => homebytackat(
                                  cinemaName: widget.cinemaName,
                                  movieDate: selectedDate,
                                  movieTime: selectedTime,
                                  name: widget.name,
                                  description: widget.description,
                                  bannerurl: widget.bannerurl,
                                  posterurl: widget.posterurl,
                                  vote: widget.vote,
                                  launch_on: widget.launch_on,
                                  numOfTarings: widget.numOfTarings,
                                ),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          padding: EdgeInsets.symmetric(vertical: 16 * fem, horizontal: 32 * fem),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8 * fem),
                          ),
                        ),
                        child: Text(
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

// ... Rest of the code ...

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

// Helper functions to show date and time popup menus
  void showDatePopup(BuildContext context, List<String> times) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay = Overlay.of(context)!.context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(button.size.bottomLeft(Offset.zero), ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      position: position,
      items: times.map((date) {
        return PopupMenuItem(
          value: date,
          child: Text(date),
        );
      }).toList(),
    ).then((value) {
      if (value != null) {
        setState(() {
          selectedDate = value;
        });
      }
    });
  }

  void showTimePopup(BuildContext context) {
    List<String> grandcinema = ["3:00 PM", "6:00 PM", "8:00 PM"];
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay = Overlay.of(context)!.context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(button.size.bottomLeft(Offset.zero), ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      position: position,
      items: grandcinema.map((time) {
        return PopupMenuItem(
          value: time,
          child: Text(time),
        );
      }).toList(),
    ).then((value) {
      if (value != null) {
        setState(() {
          selectedTime = value;
        });
      }
    });
  }
}
