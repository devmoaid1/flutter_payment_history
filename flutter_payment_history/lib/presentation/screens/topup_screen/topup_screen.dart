import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: IconButton(
                        icon: Icon(
                          IconlyLight.arrow_left_2,
                          size: 18,
                        ),
                        onPressed: () {}),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Flexible(
                    flex: 6,
                    child: Center(
                      child: Text(
                        "Top Up eRider Wallet",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    flex: 3,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style: GoogleFonts.poppins(
                              color: appOrange,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
