import 'package:cenimabooking/screens/details/homebytackat.dart';
import 'package:cenimabooking/screens/details/movie-sessions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviesAbout extends StatefulWidget {
  const MoviesAbout(
      {Key? key,
      required this.name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launch_on})
      : super(key: key);
  final String name, description, bannerurl, posterurl, vote, launch_on;
  @override
  State<MoviesAbout> createState() => _MoviesAboutState();
}

class _MoviesAboutState extends State<MoviesAbout> {
  String page = "About";
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: screenWidth,
          child: Align(
            child: Container(
              height: 760,
              decoration: const BoxDecoration(
                color: Color(0xff1a2232),
              ),
              child: Stack(
                children: [
                  //////////////////////////////////////////////////////**** above the video area ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                  Positioned(
                    child: Container(
                      width: 376,
                      height: 168,
                      color: Color(0xb21e283d),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 124,
                            child: Stack(
                              children: [
                                ////////////////////////////////////////////////////**** top navigation bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                                Positioned(
                                  left: 0,
                                  top: 65,
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    height: 50,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            page = "Sessions";
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                72.5, 0, 72.5, 0),
                                            width: 200,
                                            height: 35.5,
                                            child: Text(
                                              'About',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w700,
                                                color: const Color(0xffff7f36),
                                              ),
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            page = "Sessions";
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => MoviesSessions(),
                                              ),
                                            );
                                          },
                                          child: SizedBox(
                                            width: 188,
                                            height: double.infinity,
                                            child: Center(
                                              child: Text(
                                                'Sessions',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  //
                                                  fontSize: 16 * ffem,
                                                  fontWeight: FontWeight.w700,

                                                  color:
                                                      const Color(0xff637393),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ////////////////////////////////////////////////////**** top bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                                Positioned(
                                  left: -15,
                                  top: 25,
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 12, 139.5, 12),
                                    width: 600,
                                    height: 70,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ////////////////////////////////////////////////////**** back icon ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 70.5, 0),
                                          child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: SizedBox(
                                              width: 40,
                                              height: 40,
                                              child: Image.asset(
                                                'assets/interfaces/images/glyph-8C7.png',
                                                width: 40,
                                                height: 40,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ////////////////////////////////////////////////////**** title ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 11, 0, 0),
                                          height: 40,
                                          child: Text(
                                            widget.name ?? 'Not Loaded',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 18 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1 * ffem / fem,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //////////////////////////////////////////////////////**** video image ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                  page == "About" ? openAbout() : openSessions()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget openSessions() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 125,
          child: Align(
            child: SizedBox(
              width: 375,
              height: 210,
              child: Image.asset(
                'assets/interfaces/images/video.png',
                width: 375,
                height: 210,
              ),
            ),
          ),
        ),
        //////////////////////////////////////////////////////**** Rating bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////**** Description ****///////////////////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////**** select button ****///////////////////////////////////////////////////////////////////////////////////////////////////////
      ],
    );
  }

  Widget openAbout() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 125,
          child: Align(
            child: SizedBox(
              width: 375,
              height: 210,
              child: Image.network(
                widget.posterurl,
                width: double.infinity,
                height: 210,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        //////////////////////////////////////////////////////**** Rating bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
        Positioned(
          left: 0,
          top: 339,
          child: Container(
            color: const Color(0xb21e283d),
            padding: const EdgeInsets.fromLTRB(78, 0, 64, 0),
            width: 400,
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //////////////////////////////////////////////////////**** Imbd rating ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 78, 0),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.vote,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //////////////////////////////////////////////////////**** Description ****///////////////////////////////////////////////////////////////////////////////////////////////////////
        Positioned(
          top: 410,
          child: Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
            width: 375,
            height: 324,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 184, 8),
                      width: double.infinity,
                      height: 25,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 1, 29, 0),
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
                            width: 38,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0x196d9eff)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Center(
                              child: Text(
                                '16+',
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
                      margin: const EdgeInsets.fromLTRB(0, 0, 190, 11),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 40, 0),
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
                            '02:56',
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
                      margin: const EdgeInsets.fromLTRB(0, 0, 194, 11),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 45, 0),
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
                      margin: const EdgeInsets.fromLTRB(0, 0, 98, 11),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 55, 0),
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
                            'Action, Crime, Drama',
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
              ],
            ),
          ),
        ),
        //////////////////////////////////////////////////////**** select button ****///////////////////////////////////////////////////////////////////////////////////////////////////////
        Positioned(
          left: 0,
          top: 678,
          child: Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 30, 16),
            width: 375,
            height: 88,
            color: const Color(0xb21e283d),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange.shade600,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: MaterialButton(
                minWidth: 200,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homebytackat(),
                    ),
                  );
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
    );
  }
}
