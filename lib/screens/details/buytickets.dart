import 'package:cenimabooking/screens/pay/pay.dart';
import 'package:cenimabooking/screens/pay/ticket.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BuyTickets extends StatelessWidget {
  final int selectedTickets;
  final int totalPrice;
  final List<String> seatNumbers;
  final List<String> seatLocations;
  final String? cinemaName;
  final String? movieName;
  final String? movieTime;
  String currentTime =
  DateFormat('hh:mm a').format(DateTime(2023, 7, 5, 10, 30));
  String currentDate = DateFormat('yyyy-MM-dd').format(DateTime(2023, 7, 5));

  BuyTickets({
    required this.selectedTickets,
    required this.totalPrice,
    required this.seatNumbers,
    required this.seatLocations,
    this.cinemaName,
    this.movieName,
    this.movieTime,
  });

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFF101238);
    Color accentColor = Colors.white;
    Color textColor = Colors.white;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking Details',
          style: TextStyle(color: accentColor),
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        width: double.infinity,
        color: primaryColor,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cinema: ${cinemaName ?? ""}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Movie: ${movieName ?? ""}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tickets Reserved: $selectedTickets ${selectedTickets > 1 ? 'tickets' : 'ticket'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            Text(
              'Total: \$${totalPrice}',
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Time: $currentTime',
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
            Text(
              'Date: $currentDate',
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Seat Details:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: seatNumbers.length,
              itemBuilder: (context, index) {
                return Card(
                  color: accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 2,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seat Number:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          seatNumbers[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Location:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          seatLocations[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pay(),
                  ),
                );
              },
              child: Text(
                'Confirm Booking',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(accentColor),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
