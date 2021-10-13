import 'package:flutter/material.dart';
import 'package:flutter_payment_history/business%20Logic/blocs/payment_history_bloc/payment_history_bloc.dart';

import 'package:flutter_payment_history/constants/constants.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';

import 'package:google_fonts/google_fonts.dart';

import 'widgets/DropButton_widget.dart';
import 'widgets/paymentList.dart';

class PaymentHistoryScreen extends StatefulWidget {
  const PaymentHistoryScreen({Key key}) : super(key: key);

  @override
  _PaymentHistoryScreenState createState() => _PaymentHistoryScreenState();
}

class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {
  @override
  void initState() {
    super.initState();
    paymentBloc..getPayments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appOrange,
          title: Center(
            child: Text("Payment History", style: appBarTextStyle),
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey[50],
                        blurRadius: 10.0,
                        offset: Offset(0.0, 0.50))
                  ]),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Mounth :",
                      style: GoogleFonts.raleway(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[700]),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    MonthsDropButton(),
                  ],
                ),
              ),
            ),
            StreamBuilder(
                stream: paymentBloc.paymentObservable,
                builder: (context, AsyncSnapshot<List<Payment>> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.orange,
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text("something went wrong"),
                    );
                  } else if (snapshot.hasData) {
                    var payments = snapshot.data;
                    if (payments.length == 0) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          Text(
                            "There are no Payments on this month",
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                decorationThickness: 3,
                                fontSize: 20),
                          ),
                        ],
                      );
                    }
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildPaymentsList(snapshot, payments),
                      ),
                    );
                  }
                  return Container();
                })
          ],
        ));
  }
}
