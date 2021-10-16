part of 'selectpayment_bloc.dart';

@immutable
abstract class SelectpaymentEvent {}

class SetPayment extends SelectpaymentEvent {
  String method;
  SetPayment({this.method});
}
