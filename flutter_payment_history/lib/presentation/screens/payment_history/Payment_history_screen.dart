import 'package:flutter/material.dart';
import 'package:flutter_payment_history/business%20Logic/blocs/payment_history_bloc/payment_history_bloc1.dart';

import 'package:flutter_payment_history/constants/constants.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';

import 'package:google_fonts/google_fonts.dart';

import 'widgets/header_bar.dart';
import 'widgets/paymentList.dart';

class PaymentHistoryScreen extends StatelessWidget {
  PaymentHistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  HeaderBar(),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey[200], width: 2)),
                    child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffF2F2F2)),
                      labelColor: appDarkBlue,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            "Payments",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: appDarkBlue,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Orders",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: appDarkBlue,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ), //tabs

                  SizedBox(
                    height: 10,
                  ),

                  Expanded(
                    child: TabBarView(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: StreamBuilder(
                                  stream: paymentBloc.paymentObservable,
                                  builder: (context,
                                      AsyncSnapshot<List<Payment>> snapshot) {
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          backgroundColor: appOrange,
                                        ),
                                      );
                                    } else if (snapshot.hasError) {
                                      return Center(
                                        child: Text("something went wrong"),
                                      );
                                    } else if (snapshot.hasData) {
                                      final payments = snapshot.data;
                                      return buildPaymentsList(
                                          snapshot, payments);
                                    }
                                    return Center(
                                      child: CircularProgressIndicator(
                                        backgroundColor: appOrange,
                                        color: appOrange,
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                        Center(
                            child: Text(
                          "Here is List of orders",
                          style: GoogleFonts.poppins(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ))
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
