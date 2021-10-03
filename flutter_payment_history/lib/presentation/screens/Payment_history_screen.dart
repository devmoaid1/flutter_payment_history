import 'package:flutter/material.dart';
import 'package:flutter_payment_history/business%20Logic/bloc/payment_bloc.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';
import 'package:flutter_payment_history/presentation/widgets/DropButton_widget.dart';
import 'package:flutter_payment_history/presentation/widgets/Payment_Container.dart';
import 'package:flutter_payment_history/presentation/widgets/paymentList.dart';

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
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Payment History",
              style: TextStyle(color: Colors.black),
            ),
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
                      "Period :",
                      style: TextStyle(
                          fontSize: 20,
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
                      return Center(
                        child: Text("There are no Payments on this month"),
                      );
                    }
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
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
