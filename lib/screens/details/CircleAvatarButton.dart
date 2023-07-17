
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SeatAvailabilityModel extends ChangeNotifier {
  String? selectedOption;

  SeatAvailabilityModel({String? initialValue}) {
    selectedOption = initialValue;
  }

  void updateOption(String? value) {
    selectedOption = value;
    notifyListeners();
  }
}

class CircleAvatarButton extends StatelessWidget {
  final String value;
  final String label;
  final Color backgroundColor;
  final String symbol;

  const CircleAvatarButton({
    required this.value,
    required this.label,
    required this.backgroundColor,
    required this.symbol,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = Provider.of<SeatAvailabilityModel>(context).selectedOption == value;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
              border: Border.all(color: Colors.white),
            ),
            child: Center(
              child: Text(
                symbol,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class CircleAvatarButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF101238),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatarButton(
                  value: 'Available',
                  label: 'Available',
                  backgroundColor: Color(0xFF101238),
                  symbol: '',
                ),
                CircleAvatarButton(
                  value: 'occupied',
                  label: 'occupied',
                  backgroundColor: Color(0xFF101238),
                  symbol: 'X',
                ),
                CircleAvatarButton(
                  value: 'Chosen',
                  label: 'Chosen',
                  backgroundColor: Colors.orangeAccent,
                  symbol: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

