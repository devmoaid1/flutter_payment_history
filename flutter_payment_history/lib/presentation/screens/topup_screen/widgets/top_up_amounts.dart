import 'package:flutter/material.dart';
import 'package:flutter_payment_history/business%20Logic/blocs/Top_Up_bloc/bloc/topupbloc_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TopUpAmounts extends StatelessWidget {
  TopupblocBloc bloc;

  TopUpAmounts({Key key, this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<double> amounts = [10, 50, 100, 200, 500, 1000, 2000, 5000];
    final List<GestureDetector> amountsContainers = amounts
        .map(
          (double amount) => GestureDetector(
            onTap: () {
              bloc.add(SetAmount(amount: amount));
            },
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
                    amount.round().toString(),
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
