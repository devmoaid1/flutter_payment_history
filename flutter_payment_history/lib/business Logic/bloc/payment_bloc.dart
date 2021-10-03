import 'package:flutter_payment_history/data/Payment_Repostory.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';
import 'package:rxdart/rxdart.dart';
import 'package:intl/intl.dart';

class PaymentBloc {
  List intialState = [];
  final PaymentRepository _paymentRepository = new PaymentRepository();
  final BehaviorSubject<List<Payment>> _subject = new BehaviorSubject();

  Stream<List<Payment>> get paymentObservable => _subject.stream;

  getPayments() async {
    final List<Payment> payments = await _paymentRepository.getAllPayments();
    final List<Payment> formattedPayments = [];

    for (int i = 0; i < payments.length; i++) {
      DateTime dt = DateTime.parse(payments[i].paymentDate);
      final formatter = DateFormat('yyyy-MM-dd');
      payments[i].paymentDate = formatter.format(dt);
      formattedPayments.add(payments[i]);
    }

    _subject.sink.add(formattedPayments);
  }

  getFilteredPayments({String month}) async {
    final List<Payment> payments =
        await _paymentRepository.getPaymentsByMonth(month: month);
    _subject.sink.add(payments);
  }

  dispose() {
    _subject.close();
  }
}

final paymentBloc = new PaymentBloc();
