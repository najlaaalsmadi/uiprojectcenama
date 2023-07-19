import 'package:cenimabooking/cinemapages/albarake_mall.dart';
import 'package:cenimabooking/cinemapages/grandcinema.dart';
import 'package:cenimabooking/cinemapages/mecca_mall.dart';
import 'package:cenimabooking/cinemapages/prime_irbid.dart';
import 'package:cenimabooking/cinemapages/primeabdali.dart';
import 'package:cenimabooking/cinemapages/taj_mall.dart';
import 'package:cenimabooking/constants.dart';
import 'package:cenimabooking/screens/details/details.dart';
import 'package:cenimabooking/screens/details/homebytackat.dart';
import 'package:cenimabooking/screens/home/bottom_navigation_bat.dart';
import 'package:cenimabooking/screens/login/auth.dart';
import 'package:cenimabooking/screens/login/login.dart';
import 'package:cenimabooking/screens/register/register.dart';
import 'package:cenimabooking/screens/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'screens/home/home.dart';



GoRouter? router = GoRouter(initialLocation: splashScreenPath, routes: [
  GoRoute(
    path: AuthenticationPath,
    builder: (context, state) => const Auth(),
  ),
  GoRoute(
    path: splashScreenPath,
    builder: (context, state) =>  SplashScreen(),
  ),
  GoRoute(
    path: bottomNavPath,
    builder: (context, state) => const BottomNavigation(),
  ),
  GoRoute(
    path: HomebytackatPath,
    builder: (context, state) =>  homebytackat(name: '', description: '', bannerurl: '', posterurl: '', vote: '', launch_on: '', numOfTarings: '',),
  ),
  GoRoute(
    path: homeScreenPath,
    builder: (context, state) => const HomeScreen(),
  ),
 /* GoRoute(
    path: detailsScreenPath,
    builder: (context, state) =>  DetailsScreen(key: key,name: trending[index]['title'],
      bannerurl:
      'https://image.tmdb.org/t/p/w500' +
          trending[index]['backdrop_path'],
      posterurl:
      'https://image.tmdb.org/t/p/w500' +
          trending[index]['poster_path'],
      description: trending[index]['overview'],
      vote: trending[index]['vote_average']
          .toString(),
      launch_on: trending[index]
      ['release_date'], ),
  ),*/
  GoRoute(
    path: registerScreenPath,
    builder: (context, state) => const RegisterScreen(),
  ),
  GoRoute(
    path: AbdaliCinemaPath,
    builder: (context, state) => const PrimeAbdali(),
  ),
  GoRoute(
    path: AlbarakaCinemaPath,
    builder: (context, state) => const PrimeAlbaraka(),
  ),
  GoRoute(
    path: IrbidCinemaPath,
    builder: (context, state) => const PrimeIrbid(),
  ),
  GoRoute(
    path: GrandCinemaPath,
    builder: (context, state) => const GrandCinema(),
  ),
  GoRoute(
    path: MeccaCinemaPath,
    builder: (context, state) => const MeccaCinema(),
  ),
  GoRoute(
    path: TajCinemaPath,
    builder: (context, state) => const TajCinema(),
  ),
  GoRoute(
    path: loginScreenPath,
    builder: (context, state) => const LoginScreen(),
  ),

]);

// how to parse defaults
// GoRoute(
//   path: detailsScreen,
//   builder: (context, state) => DetailsScreen(
//        name: trending[index]['title'],
//                                   bannerurl:
//                                   'https://image.tmdb.org/t/p/w500' +
//                                       trending[index]['backdrop_path'],
//                                   posterurl:
//                                   'https://image.tmdb.org/t/p/w500' +
//                                       trending[index]['poster_path'],
//                                   description: trending[index]['overview'],
//                                   vote: trending[index]['vote_average']
//                                       .toString(),
//                                   launch_on: trending[index]
//                                   ['release_date'],),
// ),
