import 'package:flutter/material.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';

class PaymentConatiner extends StatelessWidget {
  final Payment payment;
  PaymentConatiner({this.payment});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 8,
      shadowColor: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 160,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Card(
                    margin: EdgeInsets.fromLTRB(4, 0, 0, 20),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    shadowColor: Colors.grey[200],
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0)),
                      child: Image(
                        height: 80,
                        width: 80,
                        image: NetworkImage(payment.logo),
                      ),
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        payment.paymentName,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        payment.paymentDate,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[500]),
                      ),
                      Row(
                        children: [
                          Text(
                            "Status : ",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                          Expanded(
                            child: Text(
                              "Successful",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "#RX${payment.id.substring(9)}",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      )
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: Container(
                          child: payment.type == "payment"
                              ? Text(
                                  "-${payment.amount.toDouble()} RM",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.red,
                                      fontSize: 20),
                                )
                              : Text(
                                  "+${payment.amount.toDouble()} RM",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.green,
                                      fontSize: 20),
                                )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
