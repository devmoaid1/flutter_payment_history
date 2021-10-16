part of 'topupbloc_bloc.dart';

@immutable
abstract class TopupblocState {}

class TopupblocInitial extends TopupblocState {}

class SelectedPayment extends TopupblocState {
  final String selectedMethod;
  SelectedPayment({this.selectedMethod});
}

class Amount extends TopupblocState {
  final double amount;
  Amount({this.amount});
}
