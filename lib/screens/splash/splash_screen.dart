import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
enum SplashScreenStatus {
  Loading,
  Countdown,
  Finished,
}

class SplashScreenCubit extends Cubit<SplashScreenStatus> {
  SplashScreenCubit() : super(SplashScreenStatus.Loading);

  void startCountdown() {
    emit(SplashScreenStatus.Countdown);
  }

  void finishCountdown() {
    emit(SplashScreenStatus.Finished);
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/_Photo .png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.black.withOpacity(0.6),
                height:double.infinity ,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // توسيط العناصر بشكل رأسي
                  children: [
                    Text(
                      'Welcome to Cinema Booking',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Image.asset("assets/images/logo.png"),
                    ElevatedButton(
                      onPressed: () {
                        context.go(bottomNavPath);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18,
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
    );
  }
}
