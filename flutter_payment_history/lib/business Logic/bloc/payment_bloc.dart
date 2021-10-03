import 'package:flutter_payment_history/data/Payment_Repostory.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';
import 'package:rxdart/rxdart.dart';

class PaymentBloc {
  List intialState = [];
  final PaymentRepository _paymentRepository = new PaymentRepository();
  final BehaviorSubject<List<Payment>> _subject = new BehaviorSubject();

  Stream<List<Payment>> get paymentObservable => _subject.stream;

  getAllPayments() async {
    final List<Payment> payments = await _paymentRepository.getAllPayments();
    _subject.sink.add(payments);
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
