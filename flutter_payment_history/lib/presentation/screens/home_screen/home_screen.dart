import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'widgets/deliver_to_row.dart';
import 'widgets/eWallet_summary.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              color: appOrange,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  DelierverToRow(),
                  SizedBox(
                    height: 23,
                  ),
                  EWalletSummary()
                ],
              ),
            ),
            DraggableScrollableSheet(
              maxChildSize: 0.7,
              initialChildSize: 0.65,
              builder: (context, c) => Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: SingleChildScrollView(
                  controller: c,
                  child: Column(
                    children: [Container()],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
