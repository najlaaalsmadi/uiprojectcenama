import 'package:cenimabooking/screens/pay/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentForm extends StatefulWidget {
  PaymentForm({
    required this.totalPrice,
    required this.seatNumbers,
    required this.seatLocations,
    required this.cinemaName,
    this.movieName,
    this.movieTime,
    this.movieDate,
    Key? key,
  }) : super(key: key);

  final int totalPrice;
  final List<String> seatNumbers;
  final List<String> seatLocations;
  final String cinemaName;
  final String? movieName;
  final String? movieTime, movieDate;

  @override
  State<PaymentForm> createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {
  int selectedRadioValue = 0;
  bool showVisaDetails = false;
  String visaCardNumber = '';
  String visaExpiryDate = '';
  String cvcCode = '';

  // Add variables for Mastercard details
  String mastercardCardNumber = '';
  String mastercardExpiryDate = '';
  String mastercardCvcCode = '';

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
              'Mastercard',
              style: TextStyle(color: Colors.white),
            ),
            value: 1,
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
    } else if (selectedRadioValue == 1 && showVisaDetails) {
      // If Mastercard is selected and Mastercard details are shown, return the Mastercard payment button.
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
      // If Visa is selected and Visa details are provided, go to the TicketScreen.
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
            movieDate: widget.movieDate,
            visaCardNumber: visaCardNumber, // Use the entered Visa card number.
            visaExpiryDate: visaExpiryDate, // Use the entered expiry date.
            // Use the entered CVC code.
          ),
        ),
      );
    } else if (selectedRadioValue == 1 && showVisaDetails && mastercardCardNumber.isNotEmpty && mastercardExpiryDate.isNotEmpty && mastercardCvcCode.isNotEmpty) {
      // If Mastercard is selected and Mastercard details are provided, go to the TicketScreen.
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
            movieDate: widget.movieDate,
            visaCardNumber: mastercardCardNumber, // Use the entered Mastercard number.
            visaExpiryDate: mastercardExpiryDate, // Use the entered expiry date.
            // Use the entered CVC code.
          ),
        ),
      );
    } else {
      // For other payment methods or if card details are incomplete, show an alert dialog.
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Payment Error'),
          content: Text('Please enter valid card details.'),
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
          movieDate: widget.movieDate,
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
                labelText: 'card Number',
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                _CardNumberFormatter(),
              ],
              onChanged: (value) {
                setState(() {
                  mastercardCardNumber = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Expiry Date (MM/YY)',
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.datetime,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                _MastercardExpiryDateFormatter(),
              ],
              onChanged: (value) {
                setState(() {
                  mastercardExpiryDate = value;
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
              maxLength: 3, // Set max length to 4 digits for CVC.
              onChanged: (value) {
                setState(() {
                  mastercardCvcCode = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    const int maxLength = 16;

    String text = newValue.text;
    String filteredText = text.replaceAll(RegExp(r'\D'), ''); // Remove non-digits

    if (filteredText.length > maxLength) {
      filteredText = filteredText.substring(0, maxLength);
    }

    List<String> segments = [];
    for (int i = 0; i < filteredText.length; i += 4) {
      int end = i + 4;
      if (end > filteredText.length) {
        end = filteredText.length;
      }
      segments.add(filteredText.substring(i, end));
    }

    String formattedText = segments.join(' ');

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

class _MastercardExpiryDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    const int maxLength = 4;

    String text = newValue.text;
    String filteredText = text.replaceAll(RegExp(r'\D'), ''); // Remove non-digits

    if (filteredText.length > maxLength) {
      filteredText = filteredText.substring(0, maxLength);
    }

    if (filteredText.isEmpty) {
      return newValue;
    }

    String formattedText = filteredText.substring(0, 2) + '/' + filteredText.substring(2);

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

String formatMastercardExpiryDate(String input) {
  if (input.length > 4) {
    input = input.substring(0, 4);
  }

  String filteredText = input.replaceAll(RegExp(r'\D'), ''); // Remove non-digits

  if (filteredText.length > 4) {
    filteredText = filteredText.substring(0, 4);
  }

  if (filteredText.isEmpty) {
    return '';
  }

  return filteredText.substring(0, 2) + '/' + filteredText.substring(2);
}
