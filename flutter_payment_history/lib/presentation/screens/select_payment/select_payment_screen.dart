import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_payment_history/business%20Logic/blocs/Top_Up_bloc/bloc/topupbloc_bloc.dart';

import 'package:flutter_payment_history/constants/constants.dart';
import 'package:flutter_payment_history/constants/routes.dart';
import 'package:flutter_payment_history/presentation/screens/shared_widgets/Header.dart';
import 'package:flutter_payment_history/presentation/screens/shared_widgets/app_button.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/payments_method.dart';

class SelectPaymentScreen extends StatelessWidget {
  final TopupblocBloc bloc;
  const SelectPaymentScreen({Key key, this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onBack() {
      Navigator.pushNamed(context, topUpScreen);
    }

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Header(
              title: "Select Payment",
              handleCancel: onBack,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
                Text("Select your  payment option",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: appDarkBlue)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                PaymentsMethods(
                  bloc: bloc,
                ),
              ],
            ),
            Container(
              width: 330,
              height: 2,
              color: Colors.grey[200],
            ),
            Spacer(),
            BlocBuilder<TopupblocBloc, TopupblocState>(
              builder: (context, state) {
                if (state is SelectedPayment) {
                  void handelConfirm() {
                    print(state.selectedMethod);
                    Navigator.pushNamed(context, topUpScreen);
                  }

                  return AppButton(
                    title: "confirm",
                    handleOnTap: handelConfirm,
                  );
                }
                return Container();
              },
            )
          ],
        ),
      ),
    ));
  }
}
