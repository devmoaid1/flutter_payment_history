import 'package:flutter/material.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentConatiner extends StatelessWidget {
  final Payment payment;
  PaymentConatiner({this.payment});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 4,
      shadowColor: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 160,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Material(
                  elevation: 4,
                  shape: CircleBorder(),
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    height: 80,
                    width: 80,
                    padding: EdgeInsets.all(5),
                    child: Image(
                      fit: BoxFit.contain,
                      image: NetworkImage(payment.logo),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
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
                        style: GoogleFonts.raleway(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        payment.paymentDate,
                        style: GoogleFonts.raleway(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[500]),
                      ),
                      Row(
                        children: [
                          Text(
                            "Status:",
                            style: GoogleFonts.raleway(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              " Successful",
                              style: GoogleFonts.lato(
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
                        style: GoogleFonts.raleway(
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
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                      fontSize: 20),
                                )
                              : Text(
                                  "+${payment.amount.toDouble()} RM",
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w600,
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
