import 'package:flutter/material.dart';
import 'dart:ui';


class MoviesSessions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.75;
    return SingleChildScrollView(
      child: Expanded(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: 790*fem,
            decoration: BoxDecoration (
              color: Color(0xff1a2232),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0*fem,
                  top: 0*fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0*fem, 17.17*fem, 0*fem, 0*fem),
                    width: 376*fem,
                    height: 168*fem,
                    decoration: BoxDecoration (
                      color: Color(0xb21e283d),
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur (
                          sigmaX: 20*fem,
                          sigmaY: 20*fem,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(34.27*fem, 0*fem, 14.34*fem, 15.33*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 232.23*fem, 0.41*fem),
                                    width: 28.5*fem,
                                    height: 11.09*fem,
                                    child: Image.asset(
                                      'assets/images/time-ruu.png',
                                      width: 28.5*fem,
                                      height: 11.09*fem,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.17*fem, 5*fem, 0*fem),
                                    width: 17*fem,
                                    height: 10.67*fem,
                                    child: Image.asset(
                                      'assets/images/cellular-connection-1VR.png',
                                      width: 17*fem,
                                      height: 10.67*fem,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0.17*fem),
                                    width: 15.33*fem,
                                    height: 11*fem,
                                    child: Image.asset(
                                      'assets/images/wifi-Fgb.png',
                                      width: 15.33*fem,
                                      height: 11*fem,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.17*fem, 0*fem, 0*fem),
                                    width: 24.33*fem,
                                    height: 11.33*fem,
                                    child: Image.asset(
                                      'assets/images/battery-24w.png',
                                      width: 24.33*fem,
                                      height: 11.33*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 122*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // tabsFiw (8:688)
                                    left: 0*fem,
                                    top: 64*fem,
                                    child: Container(
                                      width: 376*fem,
                                      height: 50*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            // tabb27 (8:689)
                                            onPressed: () {},
                                            style: TextButton.styleFrom (
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: Container(
                                              width: 188*fem,
                                              height: double.infinity,
                                              child: Center(
                                                child: Text(
                                                  'About',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle (
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575*ffem/fem,
                                                    color: Color(0xff637393),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // tabGe3 (8:690)
                                            padding: EdgeInsets.fromLTRB(63.5*fem, 0*fem, 63.5*fem, 0*fem),
                                            height: 35.5*fem,
                                            child: Text(
                                              'Sessions',
                                              textAlign: TextAlign.center,
                                              style: TextStyle (
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2575*ffem/fem,
                                                color: Color(0xffff7f36),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // topbarxmm (8:691)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(16*fem, 12*fem, 139.5*fem, 12*fem),
                                      width: 375*fem,
                                      height: 124*fem,
                                      child: ClipRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur (
                                            sigmaX: 20*fem,
                                            sigmaY: 20*fem,
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // glyphSB9 (I8:691;4:221)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83.5*fem, 0*fem),
                                                child: TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom (
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                  child: Container(
                                                    width: 40*fem,
                                                    height: 40*fem,
                                                    child: Image.asset(
                                                      'assets/images/glyph-WGF.png',
                                                      width: 30*fem,
                                                      height: 30*fem,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // titlewrapYEB (I8:691;4:222)
                                                margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 0*fem, 0*fem),
                                                height: 30*fem,
                                                child: Text(
                                                  'The Batman',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle (

                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1*ffem/fem,
                                                    color: Color(0xffffffff),
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////**** Filter bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                Positioned(
                  left: 0*fem,
                  top: 156*fem,
                  child: Container(
                    width: 400*fem,
                    height: 79*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff1e283d),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //////////////////////////////////////////////////////**** date icon ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                        Container(
                          padding: EdgeInsets.fromLTRB(36.5*fem, 19*fem, 36.5*fem, 16*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                width: 18*fem,
                                height: 18*fem,
                                child: Image.asset(
                                  'assets/images/calendar-B83.png',
                                  width: 18*fem,
                                  height: 18*fem,
                                ),
                              ),
                              Text(
                                'April, 18',
                                style: TextStyle (
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1428571429*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //////////////////////////////////////////////////////**** Time icon ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(40.5*fem, 20*fem, 41.5*fem, 16*fem),
                            height: double.infinity,

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 8*fem),
                                  width: 13*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/images/sort.png',
                                    width: 13*fem,
                                    height: 16*fem,
                                  ),
                                ),
                                Text(
                                  'Time ↑',
                                  style: TextStyle(
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1428571429*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //////////////////////////////////////////////////////**** By Cenama icon ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29.5*fem, 16*fem, 31.5*fem, 16*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 4*fem),
                                  width: 40*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/images/option-yTD.png',
                                    width: 40*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                Text(
                                  'By cinema',
                                  style: TextStyle(
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1428571429*ffem/fem,
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
                //////////////////////////////////////////////////////**** Filter bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                //////////////////////////////////////////////////////**** labels bar ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                Positioned(
                  top: 225,
                  child: Container(
                    width: 400,
                    height: 30*fem,
                    color: Color(0xff253454),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 30*fem),
                        Text(
                          'Time',
                          textAlign: TextAlign.center,
                          style: TextStyle(

                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1666666667*ffem/fem,
                            color: Color(0xff637393),
                          ),
                        ),
                        SizedBox(width: 70*fem),
                        Text(
                          'Adult',
                          style: TextStyle(

                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1666666667*ffem/fem,
                            color: Color(0xff637393),
                          ),
                        ),
                        SizedBox(width: 20*fem),
                        Text(
                          'Child',
                          style: TextStyle(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1666666667*ffem/fem,
                            color: Color(0xff637393),
                          ),
                        ),
                        SizedBox(width: 25*fem),
                        Text(
                          'Student',
                          style: TextStyle(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1666666667*ffem/fem,
                            color: Color(0xff637393),
                          ),
                        ),
                        SizedBox(width: 25*fem),
                        Text(
                          'VIP',
                          style: TextStyle (
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1666666667*ffem/fem,
                            color: Color(0xff637393),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //////////////////////////////////////////////////////**** List View ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                Positioned(
                  top: 260*fem,
                  child: Container(
                    width: 800*fem,
                    height: 600*fem,
                    color: Colors.red,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          padding: EdgeInsets.fromLTRB(31*fem, 16*fem, 16*fem, 17*fem),
                          width: 400*fem,
                          height: 90*fem,
                          child: Row(
                            children: [
                              //////////////////////////////////////////////////////**** Time column ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                    child: Text(
                                      '14:40',
                                      style: TextStyle (
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 7*fem, 0*fem),
                                    child: Text(
                                      'Рус',
                                      style: TextStyle (
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.1666666667*ffem/fem,
                                        color: Color(0xff637393),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30*fem),
                              //////////////////////////////////////////////////////**** rest of the item ****///////////////////////////////////////////////////////////////////////////////////////////////////////
                              Column(
                                children: [
                                  Align(
                                    child: Text(
                                      'Eurasia Cinema7',
                                      style: TextStyle (
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.7142857143*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 18*fem,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 40*fem,
                                          height: double.infinity,
                                          child: Center(
                                            child: Text(
                                              '2200 ₸',
                                              style: TextStyle (
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2857142857*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 21.25*fem,
                                        ),
                                        Container(
                                          width: 40*fem,
                                          height: double.infinity,
                                          child: Center(
                                            child: Text(
                                              '1000 ₸',
                                              style: TextStyle (
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2857142857*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 21.25*fem,
                                        ),
                                        Container(
                                          width: 40*fem,
                                          height: double.infinity,
                                          child: Center(
                                            child: Text(
                                              '1500 ₸',
                                              style: TextStyle (
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2857142857*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 21.25*fem,
                                        ),
                                        Container(
                                          width: 5*fem,
                                          height: double.infinity,
                                          child: Center(
                                            child: Text(
                                              '•',
                                              style: TextStyle (
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2857142857*ffem/fem,
                                                color: Color(0xff637393),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}