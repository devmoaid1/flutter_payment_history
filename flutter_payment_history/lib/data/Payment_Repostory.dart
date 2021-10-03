import 'dart:convert';
import './models/Payment.dart';
import 'RestService.dart';

class PaymentRepository {
  static final PaymentRepository _instance = PaymentRepository._constructor();
  factory PaymentRepository() {
    return _instance;
  }

  PaymentRepository._constructor();
  final rest = RestService();

  Future<List<Payment>> getAllPayments() async {
    final listJson = await rest.get('payment');

    return (listJson as List)
        .map((itemJson) => Payment.fromJson(itemJson))
        .toList();
  }

  Future<List<Payment>> getPaymentsByMonth({String month}) async {
    final listJson = await rest.get('payment/$month');

    return (listJson as List)
        .map((itemJson) => Payment.fromJson(itemJson))
        .toList();
  }
}
