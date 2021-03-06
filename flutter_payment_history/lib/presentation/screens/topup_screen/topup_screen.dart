import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_payment_history/business%20Logic/blocs/Top_Up_bloc/bloc/topupbloc_bloc.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:flutter_payment_history/constants/routes.dart';
import 'package:flutter_payment_history/presentation/screens/shared_widgets/Header.dart';
import 'package:flutter_payment_history/presentation/screens/shared_widgets/app_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import 'widgets/top_up_amounts.dart';

class TopUpScreen extends StatelessWidget {
  TopUpScreen({Key key}) : super(key: key);

  createDialog(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              actionsOverflowButtonSpacing: 5,
              elevation: 5,
              title: Text(
                "Add Amount",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
              content: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: appOrange, width: 2)),
                    hintText: "Enter Top Up Amount",
                    focusColor: appOrange,
                    hintStyle: GoogleFonts.poppins(color: Colors.grey[400])),
                cursorColor: appOrange,
                controller: controller,
              ),
              actions: [
                GestureDetector(
                    child: Text(
                  "Confirm",
                  style: GoogleFonts.poppins(
                    color: appOrange,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                )),
                GestureDetector(
                    child: Text(
                  "Cancel",
                  style: GoogleFonts.poppins(
                    color: appOrange,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final TopupblocBloc bloc = BlocProvider.of<TopupblocBloc>(context);
    String paymentMethod = "FPX";
    double topUpAmount = 10;
    createDialog(BuildContext context) {
      TextEditingController controller = TextEditingController();
      return showDialog(
          context: context,
          builder: (context) => AlertDialog(
                actionsOverflowButtonSpacing: 5,
                elevation: 5,
                title: Text(
                  "Add Amount",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                content: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w700),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: appOrange, width: 2)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: appOrange, width: 2)),
                      hintText: "Enter Top Up Amount",
                      focusColor: appOrange,
                      hintStyle: GoogleFonts.poppins(color: Colors.grey[400])),
                  cursorColor: appOrange,
                  controller: controller,
                ),
                actions: [
                  GestureDetector(
                      onTap: () {
                        bloc.add(
                            SetAmount(amount: double.parse(controller.text)));
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Confirm",
                        style: GoogleFonts.poppins(
                          color: appOrange,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ],
              ));
    }

    void onCancel() {
      Navigator.pushNamed(context, homePage);
    }

    return SafeArea(
      child: Scaffold(body: BlocBuilder<TopupblocBloc, TopupblocState>(
        builder: (context, state) {
          if (state is SelectedPayment) {
            paymentMethod = state.selectedMethod;
          }

          if (state is Amount) {
            topUpAmount = state.amount;
          }
          return SingleChildScrollView(
            child: Container(
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
                    handleCancel: onCancel,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Row(children: [
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    paymentMethod,
                                    style: GoogleFonts.poppins(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      IconlyLight.arrow_right_2,
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, selectPayment);
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
                              "\$ ${topUpAmount.round()}",
                              style: GoogleFonts.poppins(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  buildSlider(topUpAmount, bloc),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      createDialog(context);
                    },
                    child: Text(
                      "Add Custom Amount",
                      style: GoogleFonts.poppins(
                          color: appOrange,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TopUpAmounts(
                    bloc: bloc,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: AppButton(
                      title: "Top up",
                    ),
                  )
                ],
              ),
            ),
          );
        },
      )),
    );
  }

  Widget buildSlider(double amount, TopupblocBloc bloc) {
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
                value: amount,
                onChanged: (double value) {
                  bloc.add(SetAmount(amount: value));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
