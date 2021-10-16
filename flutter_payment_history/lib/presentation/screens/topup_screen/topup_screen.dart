import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import 'widgets/top_up_amounts.dart';

class TopUpScreen extends StatelessWidget {
  String value = "FPX";
  TopUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            buildHeader(context),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Row(children: [
              SizedBox(
                width: 35,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Reload using",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    width: 330,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "FPX",
                          style: GoogleFonts.poppins(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          IconlyLight.arrow_right_2,
                          size: 20,
                        )
                      ],
                    ))
              ])
            ])),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Amount",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\$ 10.00",
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ),
            buildSlider(),
            TopUpAmounts(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Color(0xffFF9F00),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Top Up",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildSlider() {
    return Container(
      width: double.infinity,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
          ),
          Container(
            width: 340,
            child: SliderTheme(
              data: SliderThemeData(
                activeTrackColor: appOrange,
                inactiveTrackColor: Colors.grey[100],
                trackShape: RectangularSliderTrackShape(),
                trackHeight: 4.0,
                thumbColor: appOrange,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                overlayColor: Colors.grey[100],
                overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
              ),
              child: Slider(
                min: 0.0,
                max: 5000.0,
                value: 400.0,
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Row buildHeader(BuildContext context) {
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
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      SizedBox(
        width: 50,
      ),
      Flexible(
        flex: 7,
        child: Center(
          child: Text(
            "Top Up eRider Wallet",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ),
      ),
      // SizedBox(
      //   width: 10,
      // ),
      Flexible(
        flex: 3,
        child: TextButton(
            onPressed: () {},
            child: Text(
              "Cancel",
              style: GoogleFonts.poppins(
                  color: appOrange, fontSize: 15, fontWeight: FontWeight.w600),
            )),
      ),
    ],
  );
}
