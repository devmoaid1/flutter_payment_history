import 'package:flutter/material.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';

import 'Payment_Container.dart';

Widget buildPaymentsList(
    AsyncSnapshot<List<Payment>> snapshot, List<Payment> payments) {
  return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (context, index) {
        return PaymentConatiner(
          payment: payments[index],
        );
      });
}
