import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/routes.dart';

import 'package:flutter_payment_history/router.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  final AppRouter router = AppRouter();
  // This widget is the root of your application.
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
