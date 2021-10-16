import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selectpayment_event.dart';
part 'selectpayment_state.dart';

class SelectpaymentBloc extends Bloc<SelectpaymentEvent, SelectpaymentState> {
  SelectpaymentBloc() : super(SelectpaymentInitial()) {}

  // Stream<SelectpaymentState> mapEventToState(SelectpaymentEvent event) async* {
  //   if (event is SetPayment) {
  //     var newMethod = event.method;

  //     yield (SelectedPayment(selectedMethod: newMethod));
  //   }
  // }
}
