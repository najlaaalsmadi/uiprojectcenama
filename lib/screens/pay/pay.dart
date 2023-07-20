import 'dart:ui';

import 'package:cenimabooking/screens/details/homebytackat.dart';
import 'package:cenimabooking/screens/pay/payment_form.dart';
import 'package:cenimabooking/screens/pay/ticket.dart';
import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  bool isLoading = false;

  void _handleButtonPress(BuildContext context) {
    setState(() {
      isLoading = true; // Show the loading screen
    });

    Navigator.push(context, MaterialPageRoute(builder: (context) => Ticket()))
        .then((result) {
      if (result != null && result is bool && result) {
        // Delayed navigation to yahia3() after a simulated loading delay
        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            isLoading = true; // Hide the loading screen
          });

          //Navigator.push(context, MaterialPageRoute(builder: (context) => yahia3()));
        });
      } else {
        setState(() {
          isLoading = false; // Hide the loading screen
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = MediaQuery.of(context).size.width;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.80;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // Pay3k3 (12:2748)
            width: double.infinity,
            height: 840 * fem,
            decoration: BoxDecoration(
              color: Color(0xff1a2232),
            ),
            child: Stack(
              children: [
                Positioned(
                  // ticketZTV (12:3212)
                  left: 0 * fem,
                  top: 108 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 16 * fem, 0 * fem, 16 * fem),
                    width: 375 * fem,
                    height: 488 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff1e283d),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16 * fem),
                        bottomLeft: Radius.circular(16 * fem),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // infobuy (12:3350)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 16 * fem, 16 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogrouptrckvhM (AjKY9DjGG8eifQP7arTRcK)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 16 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // thebatmanEi3 (12:3349)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 16 * fem),
                                      child: Text(
                                        'The Batman',
                                        style: TextStyle(
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.3333333333 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // detailsYij (12:3213)
                                      width: 309 * fem,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // item6kF (12:3222)
                                            width: double.infinity,
                                            height: 40 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // cinemarUX (12:3223)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      45 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Cinema',
                                                    style: TextStyle(
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.2857142857 *
                                                          ffem /
                                                          fem,
                                                      color: Color(0xff637393),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // wrapuSo (12:3224)
                                                  height: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // eurasiacinema7eQP (12:3225)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                4 * fem),
                                                        child: Text(
                                                          'Eurasia Cinema7',
                                                          style: TextStyle(
                                                            fontSize: 14 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height:
                                                                1.2857142857 *
                                                                    ffem /
                                                                    fem,
                                                            color: Color(
                                                                0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupoh432Qw (AjKYMoCe7RYoFk7sz1oh43)
                                            padding: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                8 * fem,
                                                0 * fem,
                                                0 * fem),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // itemZfm (12:3227)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      113 * fem,
                                                      0 * fem),
                                                  width: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // dateuDq (12:3228)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                63 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'Date',
                                                          style: TextStyle(
                                                            fontSize: 14 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height:
                                                                1.2857142857 *
                                                                    ffem /
                                                                    fem,
                                                            color: Color(
                                                                0xff637393),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // april20221440Puh (12:3229)
                                                        '6 April 2022, 14:40',
                                                        style: TextStyle(
                                                          fontSize: 14 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2857142857 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xffffffff),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8 * fem,
                                                ),
                                                Container(
                                                  // itemiwy (12:3230)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      199 * fem,
                                                      0 * fem),
                                                  width: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // hallFS7 (12:3231)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                66 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'Hall',
                                                          style: TextStyle(
                                                            fontSize: 14 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height:
                                                                1.2857142857 *
                                                                    ffem /
                                                                    fem,
                                                            color: Color(
                                                                0xff637393),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // thAJB (12:3232)
                                                        '6th',
                                                        style: TextStyle(
                                                          fontSize: 14 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2857142857 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xffffffff),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8 * fem,
                                                ),
                                                Container(
                                                  // itemV5Z (12:3233)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      155 * fem,
                                                      0 * fem),
                                                  width: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // seatsSFh (12:3234)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                58 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'Seats',
                                                          style: TextStyle(
                                                            fontSize: 14 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height:
                                                                1.2857142857 *
                                                                    ffem /
                                                                    fem,
                                                            color: Color(
                                                                0xff637393),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // row78a71 (12:3236)
                                                        '7 row (7, 8)',
                                                        style: TextStyle(
                                                          fontSize: 14 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2857142857 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xffffffff),
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
                                  ],
                                ),
                              ),
                              Container(
                                // line146r3 (12:3351)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                width: double.infinity,
                                height: 1 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0x196d9eff),
                                ),
                              ),
                              Container(
                                // billeMm (12:3239)
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // rownD5 (12:3240)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 207 * fem, 0 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // xadultLEb (12:3241)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 32 * fem, 0 * fem),
                                            child: Text(
                                              '1 x Adult',
                                              style: TextStyle(
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.125 * ffem / fem,
                                                color: Color(0xff637393),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // f1y (12:3242)
                                            '2200 JD',
                                            style: TextStyle(
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.125 * ffem / fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8 * fem,
                                    ),
                                    Container(
                                      // rowADd (12:3243)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 207 * fem, 0 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // xchildsNw (12:3244)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 33 * fem, 0 * fem),
                                            child: Text(
                                              '1 x Child',
                                              style: TextStyle(
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.125 * ffem / fem,
                                                color: Color(0xff637393),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // Q7y (12:3245)
                                            '1000 JD',
                                            style: TextStyle(
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.125 * ffem / fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8 * fem,
                                    ),
                                    Container(
                                      // rowjvw (12:3246)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 204 * fem, 0 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // totalGfy (12:3247)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 45 * fem, 0 * fem),
                                            child: Text(
                                              '2 total',
                                              style: TextStyle(
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.125 * ffem / fem,
                                                color: Color(0xff637393),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // by9 (12:3248)
                                            '3200 JD',
                                            style: TextStyle(
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.125 * ffem / fem,
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
                        Container(
                          // tearline9zf (12:3249)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 16 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ellipse3GpP (12:3250)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 20 * fem,
                                height: 40 * fem,
                                child: Image.asset(
                                  'assets/images/ellipse-3.png',
                                  width: 20 * fem,
                                  height: 40 * fem,
                                ),
                              ),
                              Container(
                                // ellipse5QQo (12:3251)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse685u (12:3252)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse7fLj (12:3253)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse8y6X (12:3254)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse9uks (12:3255)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse10nZm (12:3256)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse11XXM (12:3257)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse124XH (12:3258)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse13bn7 (12:3259)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse14XQs (12:3260)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse153e7 (12:3261)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse16zJT (12:3262)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse17XpB (12:3263)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse185Ku (12:3264)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse19ygB (12:3265)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse20vLX (12:3266)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.41 * fem, 0 * fem),
                                width: 12 * fem,
                                height: 12 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: Color(0xff1a2232),
                                ),
                              ),
                              Container(
                                // ellipse4Ftb (12:3267)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 20 * fem,
                                height: 40 * fem,
                                child: Image.asset(
                                  'assets/images/ellipse-4.png',
                                  width: 20 * fem,
                                  height: 40 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 16 * fem, 0 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 12 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    16 * fem, 16 * fem, 16 * fem, 4 * fem),
                                width: 340 * fem,
                                height: 56 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0x196d9eff)),
                                  borderRadius: BorderRadius.circular(8 * fem),
                                ),
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 198 * fem, 0 * fem),
                                  width: 110 * fem,
                                  height: double.infinity,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Phone number',
                                      labelStyle: TextStyle(
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff637393),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16 * fem),
                              Container(
                                width: double.infinity,
                                height: 56 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8 * fem),
                                  color: Color(0xffff8036),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3fff8036),
                                      offset: Offset(0 * fem, 4 * fem),
                                      blurRadius: 8 * fem,
                                    ),
                                  ],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // انتقل إلى صفحة الملف الشخصي (PROFILE)
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PaymentForm(),
                                      ),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: isLoading
                                        ? Container(
                                            // Loading screen
                                            color: Colors.white,
                                            child: Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            ),
                                          )
                                        : Text(
                                            'Continue',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 18 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2575 * ffem / fem,
                                              color: Colors.white,
                                            ),
                                          ),
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
                Container(
                  // topbarpGo (12:2967)
                  padding: EdgeInsets.fromLTRB(
                      16 * fem, 12 * fem, 131 * fem, 12 * fem),
                  width: double.infinity,
                  height: 124 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xb21e283d),
                  ),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 20 * fem,
                        sigmaY: 20 * fem,
                      ),
                      child: Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 75 * fem, 0 * fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero),
                                child: Container(
                                  width: 40 * fem,
                                  height: 40 * fem,
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_back,
                                        color: Colors.white),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => homebytackat(name: '', description: '', bannerurl: '', posterurl: '', vote: '', launch_on: '', numOfTarings: '',)),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              // Wrap with Flexible widget
                              child: Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 11 * fem, 0 * fem, 0 * fem),
                                height: 100 * fem,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Pay for tickets',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
