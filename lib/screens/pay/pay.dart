import 'package:cenimabooking/constants.dart';
import 'package:cenimabooking/screens/details/homebytackat.dart';
import 'package:cenimabooking/screens/pay/payment_form.dart';
import 'package:cenimabooking/screens/pay/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import 'package:intl/intl.dart';


// ignore: must_be_immutable
class Pay extends StatefulWidget {

  Pay({required this.selectedTickets,
    required this.totalPrice,
    required this.seatNumbers,
    required this.seatLocations,
    required this.cinemaName,
    this.movieName,
    required this.visaCardNumber,
    required this.visaExpiryDate,
    this.movieTime,super.key, this.movieDate});
  final int selectedTickets;
  final int totalPrice;
  final List<String> seatNumbers;
  final List<String> seatLocations;
  final String cinemaName;
  final String? movieName;
  final String? movieTime,movieDate;
  final String visaCardNumber;
  final String visaExpiryDate;


  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  bool isLoading = false;



  void _handleButtonPress(BuildContext context) {
    setState(() {
      isLoading = true; // Show the loading screen
    });


    Navigator.push(context, MaterialPageRoute(builder: (context) => Ticket(

      totalPrice: widget.totalPrice,
      seatNumbers: widget.seatNumbers,
      seatLocations: widget.seatLocations,
      cinemaName: widget.cinemaName,
      movieName: widget.movieName,
      movieTime: widget.movieTime, visaCardNumber: widget.visaCardNumber, visaExpiryDate: widget.visaExpiryDate,))).then((result) {
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
    return
      Scaffold(
        body:SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(

              // Pay3k3 (12:2748)
              width: double.infinity,
              height: 840*fem,
              decoration: BoxDecoration (
                color: Color(0xff1a2232),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // ticketZTV (12:3212)
                    left: 20*fem,
                    top: 170*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                      width: 375*fem,
                      height: 488*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff1e283d),
                        borderRadius: BorderRadius.only (
                          bottomRight: Radius.circular(16*fem),
                          bottomLeft: Radius.circular(16*fem),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // infobuy (12:3350)
                            margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 16*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogrouptrckvhM (AjKY9DjGG8eifQP7arTRcK)
                                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // thebatmanEi3 (12:3349)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                        child: Text(
                                          '${widget.movieName}',
                                          style: TextStyle (
                                            fontSize: 23*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.3333333333*ffem/fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // detailsYij (12:3213)
                                        width: 309*fem,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // item6kF (12:3222)
                                              width: double.infinity,
                                              height: 40*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // cinemarUX (12:3223)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 32*fem, 0*fem),
                                                    child: Text(
                                                      'Cinema',
                                                      style: TextStyle (
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2857142857*ffem/fem,
                                                        color: Color(0xff637393),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // wrapuSo (12:3224)
                                                    height: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // eurasiacinema7eQP (12:3225)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                          child: Text(
                                                            '${widget.cinemaName}',
                                                            style: TextStyle (
                                                              fontSize: 18*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.2857142857*ffem/fem,
                                                              color: Color(0xffffffff),
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
                                              padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 0*fem),
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // itemZfm (12:3227)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 100*fem, 0*fem),
                                                    width: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // dateuDq (12:3228)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50*fem, 0*fem),
                                                          child: Text(
                                                            'Date',
                                                            style: TextStyle (

                                                              fontSize: 18*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.2857142857*ffem/fem,
                                                              color: Color(0xff637393),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          // here put the date and the time for film from page cinema or film details
                                                          '${widget.movieDate}, ${widget.movieTime}',
                                                          style: TextStyle (

                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.2857142857*ffem/fem,
                                                            color: Color(0xffffffff),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 8*fem,
                                                  ),
                                                  SizedBox(
                                                    height: 8*fem,
                                                  ),
                                                  Container(
                                                    // itemV5Z (12:3233)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                    width: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // seatsSFh (12:3234)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                                                          child: Text(
                                                            'Seats',
                                                            style: TextStyle (
                                                              fontSize: 18*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.2857142857*ffem/fem,
                                                              color: Color(0xff637393),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          // row78a71 (12:3236)
                                                          '${widget.seatLocations} \n ${widget.seatNumbers}',
                                                          overflow: TextOverflow.clip,
                                                          style: TextStyle (
                                                            fontSize: 14*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.2857142857*ffem/fem,
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
                                    ],
                                  ),
                                ),
                                Container(
                                  // line146r3 (12:3351)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                  width: double.infinity,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x196d9eff),
                                  ),
                                ),
                                Container(
                                  // billeMm (12:3239)
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(8*fem),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // rownD5 (12:3240)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 207*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // xadultLEb (12:3241)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                                              child: Text(
                                                'Tickets:',
                                                style: TextStyle (
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.125*ffem/fem,
                                                  color:const Color(0xff637393),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // f1y (12:3242)
                                              '${widget.selectedTickets} ${widget.selectedTickets > 1 ? 'tickets' : 'ticket'}',
                                              style: TextStyle (
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.125*ffem/fem,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8*fem,
                                      ),
                                      Container(
                                        // rowjvw (12:3246)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 204*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // totalGfy (12:3247)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45*fem, 0*fem),
                                              child: Text(
                                                'total',
                                                style: TextStyle (
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.125*ffem/fem,
                                                  color: const Color(0xff637393),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '${widget.totalPrice}  JD',
                                              style: TextStyle (
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.125*ffem/fem,
                                                color: const Color(0xffffffff),
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
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ellipse3GpP (12:3250)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 20*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/images/ellipse-3.png',
                                    width: 20*fem,
                                    height: 40*fem,
                                  ),
                                ),
                                Container(
                                  // ellipse5QQo (12:3251)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse685u (12:3252)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse7fLj (12:3253)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse8y6X (12:3254)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse9uks (12:3255)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse10nZm (12:3256)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse11XXM (12:3257)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse124XH (12:3258)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse13bn7 (12:3259)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse14XQs (12:3260)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color:const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse153e7 (12:3261)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse16zJT (12:3262)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse17XpB (12:3263)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse185Ku (12:3264)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse19ygB (12:3265)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse20vLX (12:3266)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.41*fem, 0*fem),
                                  width: 12*fem,
                                  height: 12*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(6*fem),
                                    color: const Color(0xff1a2232),
                                  ),
                                ),
                                Container(
                                  // ellipse4Ftb (12:3267)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                  width: 20*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/images/ellipse-4.png',
                                    width: 20*fem,
                                    height: 40*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(16 * fem, 0 * fem, 16 * fem, 0 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16 * fem),
                                Container(
                                  width: double.infinity,
                                  height: 56 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8 * fem),
                                    color: const Color(0xffff8036),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x3fff8036),
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
                                          builder: (context) => PaymentForm(
                                            totalPrice: widget.totalPrice,
                                            seatNumbers: widget.seatNumbers,
                                            seatLocations: widget.seatLocations,
                                              cinemaName: widget.cinemaName,
                                              movieName: widget.movieName,
                                              movieTime: widget.movieTime,
                                              movieDate: widget.movieDate,),
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
                                          child: CircularProgressIndicator(),
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

                        ],),
                    ),
                  ),

                  Container(
                    // topbarpGo (12:2967)
                    padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 100*fem, 12*fem),
                    width: double.infinity,
                    height: 124*fem,
                    decoration: BoxDecoration (
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
                                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 75 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                  child: Container(
                                    width: 40 * fem,
                                    height: 40 * fem,
                                    child:IconButton(
                                      icon: Icon(Icons.arrow_back,color:Colors.white),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Flexible( // Wrap with Flexible widget
                                child: Container(
                                  //width: 100,
                                  margin: EdgeInsets.fromLTRB(0 * fem, 11 * fem, 0 * fem, 0 * fem),
                                  height: 100 * fem,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Pay for tickets',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30 * ffem,
                                        fontWeight: FontWeight.w700,
                                        //height: 1 * ffem / fem,
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
        ) ,
      );

  }
}