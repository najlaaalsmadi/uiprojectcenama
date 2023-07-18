
import 'package:cenimabooking/screens/pay/profile.dart';
import 'package:cenimabooking/screens/pay/ticket.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Profile_Empty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.70;
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          // profileemptyF3M (21:2637)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 170*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xff1a2232),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // fixedYYF (21:2646)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                padding: EdgeInsets.fromLTRB(0*fem, 17.17*fem, 0*fem, 0*fem),
                width: double.infinity,
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
                          // statusbar1gj (21:2647)
                          margin: EdgeInsets.fromLTRB(33.27*fem, 0*fem, 14.34*fem, 15.33*fem),
                          width: double.infinity,
                          child:

                          Container(
                            // topbarboM (21:2648)
                            padding: EdgeInsets.fromLTRB(16*fem, 12*fem, 16*fem, 1*fem),
                            width: double.infinity,

                            child: ClipRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur (
                                  sigmaX: 20*fem,
                                  sigmaY: 20*fem,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // glyph6EK (I21:2648;1:704)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                      child: TextButton(
                                        onPressed: () {
                                          // انتقل إلى صفحة الملف الشخصي (PROFILE)
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Ticket(),
                                            ),
                                          );
                                        },
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: 40*fem,
                                          height: 40*fem,
                                          child: Image.asset(
                                            'assets/images/glyph-E4P.png',
                                            width: 40*fem,
                                            height: 40*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.5*fem,
                                    ),

                                    Container(
                                      // titlewrapPjD (I21:2648;1:703)
                                      margin: EdgeInsets.fromLTRB(0*fem, 11*fem, 0*fem, 0*fem),
                                      height: 40*fem,
                                      child: Text(
                                        '8 (707) 268 48 12',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.5*fem,
                                    ),
                                    Container(
                                      // glyphEzj (I21:2648;1:709)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                      child: TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: 40*fem,
                                          height: 40*fem,
                                          child: Image.asset(
                                            'assets/images/glyph-Le3.png',
                                            width: 40*fem,
                                            height: 20*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // contentxfq (21:2638)
                margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // sectionHy1 (21:2639)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // savedcardsoRZ (21:2640)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            child: Text(
                              'Saved cards',
                              style: TextStyle (

                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2575*ffem/fem,
                                color: Color(0xff637393),
                              ),
                            ),
                          ),
                          TextButton(
                            // buttoniHd (21:2642)
                            onPressed: () {
                                // انتقل إلى صفحة الملف الشخصي (PROFILE)
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Profile(),
                                  ),
                                );
                            },
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 40*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0x196d9eff)),
                                borderRadius: BorderRadius.circular(8*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Add new card',
                                  style: TextStyle (

                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // sectionN7H (21:2643)
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // PaymentshistoryhfM (21:2644)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 244*fem),
                            child: Text(
                              'Payments history',
                              style: TextStyle (

                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2575*ffem/fem,
                                color: Color(0xff637393),
                              ),
                            ),
                          ),
                          Container(
                            // placeholderdZ1 (21:2701)
                            margin: EdgeInsets.fromLTRB(83.5*fem, 0*fem, 0*fem, 0*fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // illustrationNmV (21:2686)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                  width: 40.22*fem,
                                  height: 48*fem,
                                  child: Image.asset(
                                    'assets/images/illustration.png',
                                    width: 40.22*fem,
                                    height: 48*fem,
                                  ),
                                ),
                                Text(
                                  // youhaventboughtticketsyetV5R (21:2700)
                                  'You haven\'t bought tickets yet',
                                  textAlign: TextAlign.center,
                                  style: TextStyle (

                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2857142857*ffem/fem,
                                    color: Color(0xff637393),
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
      )
    );
  }
}