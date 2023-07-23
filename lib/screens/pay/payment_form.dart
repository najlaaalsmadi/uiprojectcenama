import 'package:cenimabooking/screens/pay/ticket.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentForm extends StatefulWidget {
  PaymentForm({
    required this.totalPrice,
    required this.seatNumbers,
    required this.seatLocations,
    this.cinemaName,
    this.movieName,
    this.movieTime,super.key});

  final int totalPrice;
  final List<String> seatNumbers;
  final List<String> seatLocations;
  final String? cinemaName;
  final String? movieName;
  final String? movieTime;
  String currentTime =
  DateFormat('hh:mm a').format(DateTime(2023, 7, 5, 10, 30));
  String currentDate = DateFormat('yyyy-MM-dd').format(DateTime(2023, 7, 5));


  @override
  State<PaymentForm> createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {

  late final int totalPrice;
  late final List<String> seatNumbers;
  late final List<String> seatLocations;
  late final String? cinemaName;
  late final String? movieName;
  late final String? movieTime;
  String currentTime =
  DateFormat('hh:mm a').format(DateTime(2023, 7, 5, 10, 30));
  String currentDate = DateFormat('yyyy-MM-dd').format(DateTime(2023, 7, 5));


  int selectedRadioValue = 0;

  void handleRadioValueChange(int value) {
    setState(() {
      selectedRadioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(26, 34, 50, 1),
        body: SingleChildScrollView(
          child: Container(
            // paymentformEfs (21:3031)
            padding: EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff7b61ff)),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              // statelogin6CH (21:3030)
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  phoneInput(),
                  SizedBox(
                    height: 20,
                  ),
                  otp(context),
                  SizedBox(
                    height: 20,
                  ),
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
          Text('Select payment method'),
          // RadioListTile(
          //     activeColor: Colors.deepOrange,
          //     title: Text(
          //       'Orange wallet',
          //       style: TextStyle(color: Colors.white),
          //     ),
          //     value: 1,
          //     groupValue: selectedRadioValue,
          //     onChanged: (newValue) {
          //       setState(() {
          //         selectedRadioValue = newValue!;
          //       });
          //     }),
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
                });
              }),
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
                });
              }),
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
                  )),
              Text(
                'Add new card',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ticket(
                totalPrice: totalPrice,
                seatNumbers: seatNumbers,
                seatLocations: seatLocations,
                cinemaName: "Cinema Name",
                movieName: "Movie Name",
                movieTime: "dateMovie",)));
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Container(
              width: double.infinity,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Color(0xffff8036), Color(0xfffc6c19)],
                  stops: <double>[0, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3fff8036),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Pay • ${widget.totalPrice}',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container otp(BuildContext context) {
    return Container(
      // stateconfirm9yB (21:3029)
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            // description5bw (21:2885)
            'Enter the password from the SMS',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            // otpinputQu7 (21:2862)
            width: double.infinity,
            height: 56,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                otpInputBox(context, 9),
                otpInputBox(context, 9),
                otpInputBox(context, 9),
                otpInputBox(context, 9),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextButton(
            // buttonA33 (21:2857)
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Container(
              width: double.infinity,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Color(0xffff8036), Color(0xfffc6c19)],
                  stops: <double>[0, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3fff8036),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            // actionsZay (21:3223)
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  // button7Mb (21:3224)
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Change number',
                      ),
                    ),
                  ),
                ),
                Container(
                  // buttonNYR (21:3225)
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Resend (0:59)',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container otpInputBox(BuildContext context, int num) {
    return Container(
      // inputM3f (21:2863)
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.2,
      height: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0x196d9eff)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        // wrapgLq (I21:2863;8:185)
        width: MediaQuery.of(context).size.width * 0.2,
        height: double.infinity,
        child: Center(
          child: Text(
            num.toString(),
          ),
        ),
      ),
    );
  }
}

Column phoneInput() {
  return Column(
    children: [
      Container(
        // inputpPB (21:2849)
        margin: EdgeInsets.fromLTRB(0, 0, 3, 12),
        padding: EdgeInsets.fromLTRB(0, 16, 16, 4),
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x196d9eff)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            width: 110,
            height: double.infinity,
            child: TextField(
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  hintText: 'Phone number',
                  hintStyle: TextStyle(color: Colors.grey)),
            )),
      ),
      TextButton(
        // buttonNp1 (21:2850)
        onPressed: () {
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[Color(0xffff8036), Color(0xfffc6c19)],
              stops: <double>[0, 1],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x3fff8036),
                offset: Offset(0, 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Continue',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ],
  );
}
