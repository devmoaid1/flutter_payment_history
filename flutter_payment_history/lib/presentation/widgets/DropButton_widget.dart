import 'package:flutter/material.dart';
import 'package:flutter_payment_history/business%20Logic/bloc/payment_bloc.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

List<DropdownMenuItem<String>> menuItems = [
  DropdownMenuItem(
    child: Text(
      "All",
    ),
    value: "All",
  ),
  DropdownMenuItem(
    child: Text("January"),
    value: "January",
  ),
  DropdownMenuItem(
    child: Text("February"),
    value: "February",
  ),
  DropdownMenuItem(
    child: Text("March"),
    value: "March",
  ),
  DropdownMenuItem(
    child: Text("April"),
    value: "April",
  ),
  DropdownMenuItem(
    child: Text("May"),
    value: "May",
  ),
  DropdownMenuItem(
    child: Text("June"),
    value: "June",
  ),
  DropdownMenuItem(
    child: Text("July"),
    value: "July",
  ),
  DropdownMenuItem(
    child: Text("August"),
    value: "August",
  ),
  DropdownMenuItem(
    child: Text("September"),
    value: "September",
  ),
  DropdownMenuItem(
    child: Text("October"),
    value: "October",
  ),
  DropdownMenuItem(
    child: Text("November"),
    value: "November",
  ),
  DropdownMenuItem(
    child: Text("December"),
    value: "December",
  )
];

class MonthsDropButton extends StatefulWidget {
  MonthsDropButton({Key key}) : super(key: key);

  @override
  _MonthsDropButtonState createState() => _MonthsDropButtonState();
}

class _MonthsDropButtonState extends State<MonthsDropButton> {
  String _value = "All";

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: appOrange,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.0, style: BorderStyle.solid, color: Colors.grey[200]),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton<String>(
          elevation: 8,
          icon: Icon(
            Icons.arrow_downward,
            color: Colors.white,
          ),
          dropdownColor: Color(0xffFF9F00),
          focusColor: Color(0xffFF9F00),
          style: GoogleFonts.raleway(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          value: _value,
          items: menuItems,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
            if (value == "All") {
              paymentBloc..getPayments();
            } else {
              paymentBloc..getFilteredPayments(month: value);
            }
          },
        ),
      ),
    );
  }
}
