import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selectpayment_event.dart';
part 'selectpayment_state.dart';

class SelectpaymentBloc extends Bloc<SelectpaymentEvent, SelectpaymentState> {
  SelectpaymentBloc() : super(SelectpaymentInitial()) {
    on<SelectpaymentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
