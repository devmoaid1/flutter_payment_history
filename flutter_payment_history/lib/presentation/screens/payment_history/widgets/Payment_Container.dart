import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class PaymentConatiner extends StatelessWidget {
  final Payment payment;
  PaymentConatiner({this.payment});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        payment.paymentName,
        style: GoogleFonts.poppins(
            color: appDarkBlue, fontSize: 20, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        "${DateFormat.jm().format(DateTime.parse(payment.paymentDate))} | ${DateFormat.yMMMd().format(DateTime.parse(payment.paymentDate))}",
        style: GoogleFonts.poppins(
            color: Color(0xff7D8499),
            fontWeight: FontWeight.w500,
            fontSize: 14),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          payment.type == "reload"
              ? Text("+${payment.amount}",
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Colors.green,
                      fontWeight: FontWeight.w600))
              : Text("-${payment.amount}",
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Colors.red,
                      fontWeight: FontWeight.w600)),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Details",
                style: GoogleFonts.poppins(
                    color: Color(0xff696E80),
                    fontSize: 15,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
