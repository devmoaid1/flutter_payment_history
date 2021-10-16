import 'package:flutter/material.dart';
import 'package:flutter_payment_history/presentation/screens/select_payment/select_payment_screen.dart';
import 'package:flutter_payment_history/presentation/screens/topup_screen/topup_screen.dart';

import 'constants/routes.dart';
import 'presentation/screens/home_screen/home_screen.dart';
import 'presentation/screens/payment_history/Payment_history_screen.dart';

class AppRouter {
  Route<dynamic> createRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case topUpScreen:
        return MaterialPageRoute(builder: (context) => TopUpScreen());
      case paymentHistoryScreen:
        return MaterialPageRoute(builder: (context) => PaymentHistoryScreen());
      case selectPayment:
        return MaterialPageRoute(builder: (context) => SelectPaymentScreen());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
