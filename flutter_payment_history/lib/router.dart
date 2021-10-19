import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_payment_history/business%20Logic/blocs/payment_history_bloc/payment_history_bloc1.dart';

import 'package:flutter_payment_history/presentation/screens/select_payment/select_payment_screen.dart';
import 'package:flutter_payment_history/presentation/screens/topup_screen/topup_screen.dart';

import 'business Logic/blocs/Top_Up_bloc/bloc/topupbloc_bloc.dart';
import 'constants/routes.dart';
import 'presentation/screens/home_screen/home_screen.dart';
import 'presentation/screens/payment_history/Payment_history_screen.dart';

class AppRouter {
  final TopupblocBloc topUpBloc = TopupblocBloc();
  AppRouter() {
    topUpBloc..add(SetPayment(method: "FPX"));
    topUpBloc..add(SetAmount(amount: 10));
    paymentBloc..getPayments();
  }

  Route<dynamic> createRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case topUpScreen:
        return MaterialPageRoute(
          builder: (context) =>
              BlocProvider.value(value: topUpBloc, child: TopUpScreen()),
        );

      case paymentHistoryScreen:
        return MaterialPageRoute(builder: (context) => PaymentHistoryScreen());

      case selectPayment:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: topUpBloc..add(SetPayment(method: "")),
            child: SelectPaymentScreen(
              bloc: topUpBloc,
            ),
          ),
        );

      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }

  void dispose() {
    topUpBloc.close();
  }
}
