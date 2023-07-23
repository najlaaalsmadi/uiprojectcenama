import 'package:cenimabooking/screens/pay/pay.dart';
import 'package:flutter/material.dart';


class CustomSeatButton extends StatelessWidget {
  final bool isSelected;
  final int selectedTickets;
  final int totalPrice;
  final VoidCallback onPressed;

  const CustomSeatButton({
    required this.isSelected,
    required this.selectedTickets,
    required this.totalPrice,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          isSelected ? Colors.orange : Colors.grey,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Buy $selectedTickets ticket${selectedTickets > 1 ? 's' : ''}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'JOD $totalPrice',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class CinemaSeats extends StatefulWidget {
  @override
  _CinemaSeatsState createState() => _CinemaSeatsState();
}

class _CinemaSeatsState extends State<CinemaSeats> {
  List<List<bool>> seats = List.generate(
    8, // عدد الصفوف
        (_) => List.generate(
      6, // عدد المقاعد في كل صف
          (_) => false, // الحالة الافتراضية للمقاعد (غير محجوزة)
    ),
  );
  List<List<bool>> selectedSeats = List.generate(
    8, // عدد الصفوف
        (_) => List.generate(
      6, // عدد المقاعد في كل صف
          (_) => false, // الحالة الافتراضية للمقاعد (غير محددة)
    ),
  );
  int totalPrice = 0; // إضافة المتغير totalPrice

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 500,
        color: Color(0xFF101238),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: seats.length * seats[0].length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: seats[0].length,
                ),
                itemBuilder: (context, index) {
                  int row = index ~/ seats[0].length;
                  int col = index % seats[0].length;
                  bool isReserved = seats[row][col];
                  bool isSelected = selectedSeats[row][col];

                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (!isReserved) {
                            selectedSeats[row][col] = !selectedSeats[row][col];
                            totalPrice += isSelected ? -8 : 8;
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: isReserved
                            ? Color(0xFFFF8600)
                            : isSelected
                            ? Colors.orange
                            : Color(0xFF161617),
                        child: Center(
                          child: Text(
                            'Row ${row + 1}, Seat ${col + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            CustomSeatButton(
              isSelected: totalPrice != 0,
              selectedTickets: selectedSeats.fold(
                0,
                    (total, row) => total + row.where((seat) => seat).length,
              ),
              totalPrice: totalPrice,
              onPressed: () {
                if (totalPrice != 0) {
                  List<String> seatNumbers = [];
                  List<String> seatLocations = [];
                  for (int row = 0; row < selectedSeats.length; row++) {
                    for (int col = 0; col < selectedSeats[row].length; col++) {
                      if (selectedSeats[row][col]) {
                        seatNumbers.add('${String.fromCharCode(65 + row)}${col + 1}');
                        seatLocations.add('Row ${row + 1}, Seat ${col + 1}');
                      }
                    }
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pay(
                        selectedTickets: selectedSeats.fold(
                          0,
                              (total, row) => total + row.where((seat) => seat).length,
                        ),
                        totalPrice: totalPrice,
                        seatNumbers: seatNumbers,
                        seatLocations: seatLocations,
                        cinemaName: "Cinema Name",
                        movieName: "Movie Name",
                        movieTime: "",
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
