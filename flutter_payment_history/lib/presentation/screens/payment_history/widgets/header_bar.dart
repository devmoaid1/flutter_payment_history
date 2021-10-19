import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 35,
          ),
          Material(
            elevation: 1,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
            child: Container(
              height: 60,
              width: 60,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://image.freepik.com/free-photo/handsome-young-man-with-new-stylish-haircut_176420-19637.jpg"),
              ),
            ),
          ),
          SizedBox(
            width: 80,
          ),
          Text(
            "History",
            style: GoogleFonts.poppins(
                fontSize: 16, color: appDarkBlue, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
