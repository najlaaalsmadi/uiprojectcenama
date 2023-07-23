import 'package:cenimabooking/screens/pay/ticket.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class PaymentForm extends StatefulWidget {
  PaymentForm({
    required this.totalPrice,
    required this.seatNumbers,
    required this.seatLocations,
    required this.cinemaName,
    this.movieName,
    this.movieTime,this.movieDate,
    Key? key,
  }) : super(key: key);

  final int totalPrice;
  final List<String> seatNumbers;
  final List<String> seatLocations;
  final String cinemaName;
  final String? movieName;
  final String? movieTime,movieDate;


  @override
  State<PaymentForm> createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {
  int selectedRadioValue = 0;
  bool showVisaDetails = false;
  String visaCardNumber = '';
  String visaExpiryDate = '';
  String cvcCode = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Payment'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              // Navigate back to the previous page when the back button is pressed.
              Navigator.pop(context);
            },
          ),
          backgroundColor: Color.fromRGBO(26, 34, 50, 1),
        ),
        backgroundColor: Color.fromRGBO(26, 34, 50, 1),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff7b61ff)),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  selectPaymentMethod(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container selectPaymentMethod() {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select payment method',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Divider(
            color: Colors.grey,
          ),
          RadioListTile(
            activeColor: Colors.deepOrange,
            title: Text(
              'Visa',
              style: TextStyle(color: Colors.white),
            ),
            value: 2,
            groupValue: selectedRadioValue,
            onChanged: (newValue) {
              setState(() {
                selectedRadioValue = newValue!;
                showVisaDetails = true;
              });
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          RadioListTile(
            activeColor: Colors.deepOrange,
            title: Text(
              'Cash',
              style: TextStyle(color: Colors.white),
            ),
            value: 3,
            groupValue: selectedRadioValue,
            onChanged: (newValue) {
              setState(() {
                selectedRadioValue = newValue!;
                showVisaDetails = false;
              });
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              Text(
                'Add new card',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          _buildVisaDetails(),
          SizedBox(height: 10,),
          _buildPaymentButton(),
        ],
      ),
    );
  }

  Widget _buildPaymentButton() {
    if (selectedRadioValue == 2 && showVisaDetails) {
      // If Visa is selected and Visa details are shown, return the Visa payment button.
      return ElevatedButton(
        onPressed: () {
          _onPayButtonPressed();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange,
          padding: EdgeInsets.symmetric(vertical: 16),
          minimumSize: Size(double.infinity, 0),
        ),
        child: Text(
          'Pay • ${widget.totalPrice}',
          style: TextStyle(fontSize: 18),
        ),
      );
    } else if (selectedRadioValue == 3) {
      // If Cash is selected, return the Cash payment button.
      return ElevatedButton(
        onPressed: () {
          _onCashPaymentButtonPressed();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange,
          padding: EdgeInsets.symmetric(vertical: 16),
          minimumSize: Size(double.infinity, 0),
        ),
        child: Text(
          'Confirm Cash Payment',
          style: TextStyle(fontSize: 18),
        ),
      );
    } else {
      // If neither Visa nor Cash is selected, return an empty container (no button).
      return Container();
    }
  }

  void _onPayButtonPressed() {
    if (selectedRadioValue == 2 && showVisaDetails && visaCardNumber.isNotEmpty && visaExpiryDate.isNotEmpty && cvcCode.isNotEmpty) {
      // If Visa is selected and Visa details are shown and card number, expiry date, and CVC code are provided,
      // go to the TicketScreen.
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Ticket(
            totalPrice: widget.totalPrice,
            seatNumbers: widget.seatNumbers,
            seatLocations: widget.seatLocations,
            cinemaName: widget.cinemaName,
            movieName: widget.movieName,
            movieTime: widget.movieTime,
            movieDate:widget.movieDate,
            visaCardNumber: visaCardNumber, // Use the entered Visa card number.
            visaExpiryDate: visaExpiryDate, // Use the entered expiry date.
            // Use the entered CVC code.
          ),
        ),
      );
    } else {
      // For other payment methods (e.g., Cash) or if Visa details are incomplete, show an alert dialog.
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Payment Error'),
          content: Text('Please enter valid Visa card details.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  void _onCashPaymentButtonPressed() {
    // Perform any actions you need for Cash payment here.
    // For example, you can show a success dialog or navigate to the next screen.
    // For this example, let's navigate to the TicketScreen directly when the Cash button is pressed.

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Ticket(
          totalPrice: widget.totalPrice,
          seatNumbers: widget.seatNumbers,
          seatLocations: widget.seatLocations,
          cinemaName: widget.cinemaName,
          movieName: widget.movieName,
          movieTime: widget.movieTime,
          movieDate:widget.movieDate,
          visaCardNumber: visaCardNumber, // Since it's Cash payment, we leave the Visa card number empty.
          visaExpiryDate: visaExpiryDate, // Since it's Cash payment, we leave the expiry date empty.
          // Since it's Cash payment, we leave the CVC code empty.
        ),
      ),
    );
  }

  Container _buildVisaDetails() {
    if (!showVisaDetails) {
      return Container();
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Card Number',
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  visaCardNumber = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Expiry Date',
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.datetime,
              onChanged: (value) {
                setState(() {
                  visaExpiryDate = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'CVC Code',
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  cvcCode = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}