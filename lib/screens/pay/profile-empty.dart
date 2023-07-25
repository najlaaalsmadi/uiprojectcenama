import 'package:cenimabooking/screens/pay/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class UserProfile extends StatefulWidget {
  int totalPrice;
  String Cinema;
  String Movie;
  String movieDate;
  String movieTime;

  UserProfile({
    required this.Movie,
    required this.Cinema,
    required this.movieTime,
    required this.totalPrice,
    required this.movieDate,
  });

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late String cinema;
  late String movie;
  late String seats;
  late String price;
  late String visa;

  DatabaseReference? dbRef;

  void getReservedSeats() {
    try {
      String currentUserUid = FirebaseAuth.instance.currentUser!.uid.toString();
      dbRef!
          .orderByChild('userId')
          .equalTo(currentUserUid)
          .get()
          .then((DataSnapshot snapshot) {
        Map<dynamic, dynamic>? reservations =
            snapshot.value as Map<dynamic, dynamic>?;

        if (reservations != null) {
          reservations.forEach((key, value) {
            cinema = value['cenima'];
            movie = value['movie'];
            seats = value['seats'];
            price = value['price'];
            visa = value['visa'];
          });
        } else {
          // Handle the case where no reservations are found for the current user.
        }
      });
      print(movie);
      print(cinema);
      print('inside profile');
    } catch (error) {
      print(error.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Seat');
    getReservedSeats();
  }

  @override
  Widget build(BuildContext context) {
    DatabaseReference dbRef = FirebaseDatabase.instance.ref().child('Seat');
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: seconderyColor,
        title: Text('User Profile'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          //This gives the page the background color
          background(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileBox(),
                  shortcuts('Payment History', Icons.payment, context),
                  //paymentHistoryCard(context),
                  Divider(color: mainColor, endIndent: 50, indent: 50),
                  shortcuts('Complaints', Icons.error, context),
                  Divider(color: mainColor, endIndent: 50, indent: 50),
                  shortcuts('Logout', Icons.logout, context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Card paymentHistoryCard(BuildContext context) {
    return Card(
      color: mainColor,
      margin: EdgeInsets.all(5),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.2,
        width: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.all(7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(widget.Cinema,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Text(widget.Movie,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge),
                ),
              ],
            ),
            Text(
                widget.movieTime == null ? 'date' : widget.movieTime.toString(),
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge), // Fix moovie time type
            Text('Payed via Visa: ' + widget.totalPrice.toString(),
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }

  Padding shortcuts(String label, IconData icon, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () async {
              if (label == 'Logout') {
                await FirebaseAuth.instance.signOut();
              }
              if (label == 'Complaints') {
                dialog(context);
              }
              if (label == 'Payment History') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(
                      totalPrice: widget.totalPrice,
                      cinemaName: widget.Cinema,
                      movieName: widget.Movie,
                      movieTime: widget.movieTime,
                      movieDate: widget.movieDate,
                    ),
                  ),
                );
              }
            },
            child: CircleAvatar(
              child: Icon(icon),
              backgroundColor: mainColor,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Text(label),
        ],
      ),
    );
  }

  Widget dialog(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }

  Container background() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            mainColor,
            labelsColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.33,
            0.33
          ], // Adjust the stop values to determine the portion of blue color
        ),
      ),
    );
  }
}

class ProfileBox extends StatelessWidget {
  const ProfileBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 250,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 8.0,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_a_photo_outlined,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Image.asset('assets/images/johnWick.jpg'),
                  ),
                  Text(
                    FirebaseAuth.instance == null
                        ? 'User Name'
                        : FirebaseAuth.instance.currentUser!.email.toString(),
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
