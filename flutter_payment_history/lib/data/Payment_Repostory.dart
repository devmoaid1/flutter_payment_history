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
    final listJson = await rest.get('payments');
    if (listJson.length == 0) {
      return [];
    } else {
      return (listJson as List)
          .map((itemJson) => Payment.fromJson(itemJson))
          .toList();
    }
  }

  Future<List<Payment>> getPaymentsByMonth({String month}) async {
    try {
      final listJson = await rest.get('payments/$month');
      return (listJson as List)
          .map((itemJson) => Payment.fromJson(itemJson))
          .toList();
    } catch (err) {
      print(err.toString());
    }
  }
}
