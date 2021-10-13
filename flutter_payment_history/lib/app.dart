import 'package:flutter/material.dart';
import 'package:flutter_payment_history/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter_payment_history/presentation/screens/topup_screen/topup_screen.dart';

import 'presentation/screens/payment_history/Payment_history_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopUpScreen(),
    );
  }
}
