import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'topupbloc_event.dart';
part 'topupbloc_state.dart';

class TopupblocBloc extends Bloc<TopupblocEvent, TopupblocState> {
  TopupblocBloc() : super(TopupblocInitial()) {}

  Stream<TopupblocState> mapEventToState(TopupblocEvent event) async* {
    if (event is SetPayment) {
      var newMethod = event.method;

      yield (SelectedPayment(selectedMethod: newMethod));
    }

    if (event is SetAmount) {
      var newAmount = event.amount;
      yield (Amount(amount: newAmount));
    }
  }
}
