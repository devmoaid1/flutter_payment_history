import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/routes.dart';

import 'package:flutter_payment_history/router.dart';

class MyApp extends StatelessWidget {
  final AppRouter router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homePage,
      onGenerateRoute: router.createRoute,
    );
  }
}
