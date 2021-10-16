part of 'topupbloc_bloc.dart';

@immutable
abstract class TopupblocEvent {}

class SetPayment extends TopupblocEvent {
  final String method;
  SetPayment({this.method});
}

class SetAmount extends TopupblocEvent {
  final double amount;
  SetAmount({this.amount});
}
