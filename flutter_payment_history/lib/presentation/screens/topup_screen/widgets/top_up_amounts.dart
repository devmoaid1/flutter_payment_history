import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopUpAmounts extends StatelessWidget {
  TopUpAmounts({
    Key key,
  }) : super(key: key);

  static const List<int> amounts = [10, 50, 100, 200, 500, 1000, 2000, 5000];
  final List<GestureDetector> amountsContainers = amounts
      .map(
        (int amount) => GestureDetector(
          onTap: () {},
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            borderOnForeground: true,
            child: Container(
              height: 50,
              child: Center(
                child: Text(
                  amount.toString(),
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          children: amountsContainers,
        ),
      ),
    );
  }
}
