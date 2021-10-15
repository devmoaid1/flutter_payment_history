import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class TopUpScreen extends StatelessWidget {
  String value = "FPX";
  TopUpScreen({Key key}) : super(key: key);

  final List<Widget> amounts = [
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      borderOnForeground: true,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            "10",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      borderOnForeground: true,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            "10",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      borderOnForeground: true,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            "10",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      borderOnForeground: true,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            "10",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      borderOnForeground: true,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            "10",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      borderOnForeground: true,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            "10",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      borderOnForeground: true,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            "10",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      borderOnForeground: true,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            "10",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      ),
    ),
  ];
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
              height: 50,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Amount",
                        style: GoogleFonts.poppins(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$ 10.00",
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ],
              ),
            ),
            buildSlider(),
            // SizedBox(
            //   height: 10,
            // ),
            Expanded(
              child: Container(
                height: 100,
                padding: EdgeInsets.all(30),
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                  children: amounts,
                ),
              ),
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
            width: 320,
            child: Slider(
              min: 0,
              max: 5000,
              value: 30,
              onChanged: null,
              activeColor: appOrange,
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
