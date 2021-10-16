import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentsMethods extends StatelessWidget {
  PaymentsMethods({
    Key key,
  }) : super(key: key);

  String currentMethod = "";
  List<String> methods = ["eRider Wallet", "Mastercard", "AMEX", "payPal"];

  Widget buildMethods(int index) {
    for (int i = 0; i < methods.length; i++) {
      if (currentMethod == methods[0]) {
        return Container(
          margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: appOrange, width: 3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/eRider.svg",
                        height: 25,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Wallet",
                        style: GoogleFonts.poppins(
                            color: Color(0xff696E80), fontSize: 13),
                      )
                    ],
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                "eRider Wallet",
                style: GoogleFonts.poppins(
                    color: Color(0xff7D8499),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        );
      } else if (currentMethod == methods[1]) {
        return Container(
          margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300], width: 3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/eRider.svg",
                        height: 25,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Wallet",
                        style: GoogleFonts.poppins(
                            color: Color(0xff696E80), fontSize: 13),
                      )
                    ],
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                "eRider Wallet",
                style: GoogleFonts.poppins(
                    color: Color(0xff7D8499),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 140,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () {
                currentMethod = methods[0];
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: currentMethod == methods[0]
                                    ? appOrange
                                    : Colors.grey[300],
                                width: 3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/eRider.svg",
                              height: 25,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Wallet",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff696E80), fontSize: 13),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "eRider Wallet",
                      style: GoogleFonts.poppins(
                          color: Color(0xff7D8499),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                currentMethod = methods[1];
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(15),
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: currentMethod == methods[1]
                                    ? appOrange
                                    : Colors.grey[300],
                                width: 3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: SvgPicture.asset(
                          "assets/images/mastercard-2.svg",
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Mastercard",
                      style: GoogleFonts.poppins(
                          color: Color(0xff7D8499),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                currentMethod = methods[2];
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: currentMethod == methods[2]
                                    ? appOrange
                                    : Colors.grey[300],
                                width: 3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: SvgPicture.asset(
                            "assets/images/american-express-1.svg")),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "AMEX",
                      style: GoogleFonts.poppins(
                          color: Color(0xff7D8499),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                currentMethod = methods[3];
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: currentMethod == methods[3]
                                    ? appOrange
                                    : Colors.grey[300],
                                width: 3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: SvgPicture.asset("assets/images/paypal-2.svg")),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "payPal",
                      style: GoogleFonts.poppins(
                          color: Color(0xff7D8499),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
