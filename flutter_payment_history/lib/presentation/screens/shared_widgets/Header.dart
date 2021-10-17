import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:flutter_payment_history/constants/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class Header extends StatelessWidget {
  final String title;
  final Function handleCancel;
  const Header({Key key, this.title, this.handleCancel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
        ),
        Flexible(
          flex: 1,
          child: IconButton(
              icon: Icon(
                IconlyLight.arrow_left_2,
                size: 20,
              ),
              onPressed: handleCancel),
        ),
        SizedBox(
          width: 50,
        ),
        Flexible(
          flex: 7,
          child: Center(
            child: Text(
              this.title,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 18),
            ),
          ),
        ),
        // SizedBox(
        //   width: 10,
        // ),
        Flexible(
          flex: 3,
          child: TextButton(
              onPressed: handleCancel,
              child: Text(
                "Cancel",
                style: GoogleFonts.poppins(
                    color: appOrange,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              )),
        ),
      ],
    );
  }
}
