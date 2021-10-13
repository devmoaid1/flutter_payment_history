import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class EWalletSummary extends StatelessWidget {
  const EWalletSummary({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "eRider eWallet",
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 12,
            ),
            Text(
              "\$ 250.00",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 30),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, topUpScreen);
              },
              child: Container(
                child: Icon(
                  IconlyLight.plus,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            )
          ],
        ),
        Text(
          "on Hold:\$25.00",
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
        )
      ],
    );
  }
}
