import 'package:flutter/material.dart';
import 'package:flutter_payment_history/business%20Logic/bloc/payment_bloc.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';
import 'package:flutter_payment_history/presentation/widgets/DropButton_widget.dart';

class PaymentHistoryScreen extends StatefulWidget {
  const PaymentHistoryScreen({Key key}) : super(key: key);

  @override
  _PaymentHistoryScreenState createState() => _PaymentHistoryScreenState();
}

class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {
  @override
  void initState() {
    super.initState();
    paymentBloc..getAllPayments();
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
      body: StreamBuilder(
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
              return Column(
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(6),
                              height: 200,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Center(
                                child: Text("${snapshot.data[index].type}"),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              );
            }
            return Container();
          }),
    );
  }
}
