import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:flutter_payment_history/constants/routes.dart';
import 'package:flutter_payment_history/presentation/screens/shared_widgets/Header.dart';
import 'package:flutter_payment_history/presentation/screens/shared_widgets/app_button.dart';
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
            Header(
              title: "Top Up eRider Wallet",
            ),
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
                        IconButton(
                          icon: Icon(
                            IconlyLight.arrow_right_2,
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, selectPayment);
                          },
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
            AppButton(
              title: "Top up",
            )
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
