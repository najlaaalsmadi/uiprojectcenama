import 'dart:ui';

import 'package:cenimabooking/screens/pay/pay.dart';
import 'package:cenimabooking/screens/pay/profile-empty.dart';
import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Navigator.pop(context, true);
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.80;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    width: double.infinity,
                    child: Container(
                        // ticketGvb (12:3440)
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 54 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff1a2232),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // fixedcUf (12:3513)
                              width: 390 * fem,
                              height: 100 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xb21e283d),
                              ),
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 20 * fem,
                                    sigmaY: 20 * fem,
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // topbar1od (12:3515)
                                        left: 0 * fem,
                                        top: 0 * fem,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              142.5 * fem,
                                              72 * fem,
                                              16 * fem,
                                              1 * fem),
                                          width: 379 * fem,
                                          height: 124 * fem,
                                          decoration: BoxDecoration(
                                            color: Color(0xb21e283d),
                                          ),
                                          child: ClipRect(
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 25 * fem,
                                                sigmaY: 20 * fem,
                                              ),
                                              child: Container(
                                                // titlewrap5oV (I12:3515;4:196)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    82.5 * fem,
                                                    0 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    6 * fem,
                                                    0 * fem,
                                                    6 * fem,
                                                    0 * fem),
                                                //height: 40*fem,
                                                child: Text(
                                                  'Your ticket',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 24 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1 * ffem / fem,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
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
                            Container(
                              // ticketQDV (12:3441)
                              padding: EdgeInsets.fromLTRB(
                                  0 * fem, 16 * fem, 0 * fem, 0 * fem),
                              width: double.infinity,
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
                                    // qr5aX (12:3555)
                                    margin: EdgeInsets.fromLTRB(38.5 * fem,
                                        0 * fem, 38.5 * fem, 15 * fem),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // frame7621DH (12:3558)
                                          margin: EdgeInsets.fromLTRB(21 * fem,
                                              0 * fem, 21 * fem, 16 * fem),
                                          padding: EdgeInsets.fromLTRB(8 * fem,
                                              8 * fem, 8 * fem, 8 * fem),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xffffffff),
                                            borderRadius:
                                                BorderRadius.circular(16 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x3fffffff),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 16 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            // code6Ej (12:3556)
                                            child: SizedBox(
                                              width: 240 * fem,
                                              height: 240 * fem,
                                              child: Image.asset(
                                                'assets/images/code.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // descriptione1M (12:3557)
                                          'Show this code to the gatekeeper at the cinema',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.3 * ffem / fem,
                                            color: Color(0xff637393),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // tearlineNxw (12:3471)
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // ellipse3fSF (12:3472)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 20 * fem,
                                          height: 40 * fem,
                                          child: Image.asset(
                                            'assets/images/ellipse-3-tpF.png',
                                            width: 20 * fem,
                                            height: 40 * fem,
                                          ),
                                        ),
                                        Container(
                                          // ellipse5b51 (12:3473)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse6vNB (12:3474)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse7e3H (12:3475)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse8n9V (12:3476)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse9vWb (12:3477)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse10Cyu (12:3478)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse11kEj (12:3479)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse12Tuq (12:3480)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse13QaB (12:3481)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse14Xuh (12:3482)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse1548w (12:3483)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse16Axf (12:3484)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse17ttf (12:3485)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse18Ehd (12:3486)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse19nDM (12:3487)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse20uHy (12:3488)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.41 * fem, 0 * fem),
                                          width: 12 * fem,
                                          height: 12 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6 * fem),
                                            color: Color(0xff1a2232),
                                          ),
                                        ),
                                        Container(
                                          // ellipse439H (12:3489)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          width: 20 * fem,
                                          height: 40 * fem,
                                          child: Image.asset(
                                            'assets/images/ellipse-4-mNo.png',
                                            width: 20 * fem,
                                            height: 40 * fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupsjyhBFV (AjKaDumAT46sPd6NGGsjyh)
                                    padding: EdgeInsets.fromLTRB(
                                        16 * fem, 16 * fem, 16 * fem, 16 * fem),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // infoimD (12:3442)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 34 * fem, 16 * fem),
                                          width: 309 * fem,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // thebatmanFFM (12:3444)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    16 * fem),
                                                child: Text(
                                                  'The Batman',
                                                  style: TextStyle(
                                                    fontSize: 18 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.3333333333 *
                                                        ffem /
                                                        fem,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // details95q (12:3445)
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // itemuKu (12:3446)
                                                      width: double.infinity,
                                                      height: 40 * fem,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            // cinemaSqd (12:3447)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    45 * fem,
                                                                    0 * fem),
                                                            child: Text(
                                                              'Cinema',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    14 * ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height:
                                                                    1.2857142857 *
                                                                        ffem /
                                                                        fem,
                                                                color: Color(
                                                                    0xff637393),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // wrapZ9Z (12:3448)
                                                            height:
                                                                double.infinity,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  // eurasiacinema77wm (12:3449)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          4 * fem),
                                                                  child: Text(
                                                                    'Eurasia Cinema7',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14 *
                                                                              ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height: 1.2857142857 *
                                                                          ffem /
                                                                          fem,
                                                                      color: Color(
                                                                          0xffffffff),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // d9R (12:3450)
                                                                  'ул. Петрова, д.24, ТЦ "Евразия"',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2857142857 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xff637393),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // autogroupbzejjCT (AjKaTjhTZEEBtA1XWbbzej)
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              8 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            // itemf67 (12:3451)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    113 * fem,
                                                                    0 * fem),
                                                            width:
                                                                double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  // dateBq9 (12:3452)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          63 *
                                                                              fem,
                                                                          0 * fem),
                                                                  child: Text(
                                                                    'Date',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14 *
                                                                              ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: 1.2857142857 *
                                                                          ffem /
                                                                          fem,
                                                                      color: Color(
                                                                          0xff637393),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // april20221440vXq (12:3453)
                                                                  '6 April 2022, 14:40',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    height:
                                                                        1.2857142857 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xffffffff),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8 * fem,
                                                          ),
                                                          Container(
                                                            // itemDmq (12:3454)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    199 * fem,
                                                                    0 * fem),
                                                            width:
                                                                double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  // hall8du (12:3455)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          66 *
                                                                              fem,
                                                                          0 * fem),
                                                                  child: Text(
                                                                    'Hall',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14 *
                                                                              ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: 1.2857142857 *
                                                                          ffem /
                                                                          fem,
                                                                      color: Color(
                                                                          0xff637393),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // thsLb (12:3456)
                                                                  '6th',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    height:
                                                                        1.2857142857 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xffffffff),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8 * fem,
                                                          ),
                                                          Container(
                                                            // itemzRD (12:3457)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    155 * fem,
                                                                    0 * fem),
                                                            width:
                                                                double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  // seatsKTV (12:3458)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          58 *
                                                                              fem,
                                                                          0 * fem),
                                                                  child: Text(
                                                                    'Seats',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14 *
                                                                              ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: 1.2857142857 *
                                                                          ffem /
                                                                          fem,
                                                                      color: Color(
                                                                          0xff637393),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // row78dUB (12:3459)
                                                                  '7 row (7, 8)',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    height:
                                                                        1.2857142857 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xffffffff),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8 * fem,
                                                          ),
                                                          Container(
                                                            // itemADD (12:3559)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    142 * fem,
                                                                    0 * fem),
                                                            width:
                                                                double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  // costuRh (12:3560)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          64 *
                                                                              fem,
                                                                          0 * fem),
                                                                  child: Text(
                                                                    'Cost',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          10 *
                                                                              ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: 1.2857142857 *
                                                                          ffem /
                                                                          fem,
                                                                      color: Color(
                                                                          0xff637393),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // paide8P (12:3561)
                                                                  '3200 JD (paid)',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    height:
                                                                        1.2857142857 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xffffffff),
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
                                          // frame763fpB (12:3567)
                                          width: double.infinity,
                                          height: 56 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    16 * fem,
                                                    0 * fem),
                                                width: 163.5 * fem,
                                                height: double.infinity,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    // انتقل إلى صفحة الملف الشخصي (PROFILE)
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Pay(),
                                                      ),
                                                    );
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Colors.transparent,
                                                    onPrimary:
                                                        Color(0xffffffff),
                                                    padding: EdgeInsets.zero,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8 * fem),
                                                      side: BorderSide(
                                                          color: Color(
                                                              0x196d9eff)),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Refund',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 18 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height:
                                                          1.2575 * ffem / fem,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // button6eb (12:3568)
                                                padding: EdgeInsets.fromLTRB(
                                                    43.25 * fem,
                                                    17 * fem,
                                                    49.75 * fem,
                                                    16 * fem),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8 * fem),
                                                  gradient: LinearGradient(
                                                    begin: Alignment(0, -1),
                                                    end: Alignment(0, 1),
                                                    colors: <Color>[
                                                      Color(0xffff8036),
                                                      Color(0xfffc6c19)
                                                    ],
                                                    stops: <double>[0, 1],
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x3fff8036),
                                                      offset: Offset(
                                                          0 * fem, 4 * fem),
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
                                                        builder: (context) =>
                                                            Profile_Empty(),
                                                      ),
                                                    );
                                                  },
                                                  style: TextButton.styleFrom(
                                                    padding: EdgeInsets.zero,
                                                    minimumSize: Size(0, 0),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // forwardarrow975 (I12:3568;1:583)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                11.5 * fem,
                                                                1 * fem),
                                                        width: 15 * fem,
                                                        height: 17 * fem,
                                                        child: Image.asset(
                                                          'assets/images/forward-arrow.png',
                                                          width: 19 * fem,
                                                          height: 17 * fem,
                                                        ),
                                                      ),
                                                      Text(
                                                        // buttonFvo (I12:3568;1:578)
                                                        'Send',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 18 * ffem,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 1.2575 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xffffffff),
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
                                ],
                              ),
                            ),
                          ],
                        ))))));
  }
}
