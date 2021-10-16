import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:flutter_payment_history/presentation/screens/shared_widgets/Header.dart';
import 'package:flutter_payment_history/presentation/screens/shared_widgets/app_button.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/payments_method.dart';

class SelectPaymentScreen extends StatelessWidget {
  const SelectPaymentScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Header(
              title: "Select Payment",
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
                Text("Select your  payment option",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: appDarkBlue)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                PaymentsMethods(),
              ],
            ),
            Container(
              width: 330,
              height: 2,
              color: Colors.grey[200],
            ),
            Spacer(),
            AppButton(
              title: "confirm",
            )
          ],
        ),
      ),
    ));
  }
}
