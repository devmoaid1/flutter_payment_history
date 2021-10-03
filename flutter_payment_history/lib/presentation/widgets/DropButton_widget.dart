import 'package:flutter/material.dart';
import 'package:flutter_payment_history/business%20Logic/bloc/payment_bloc.dart';

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
    return DropdownButton<String>(
      elevation: 8,
      focusColor: Colors.deepOrange,
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w800, color: Colors.grey[700]),
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
    );
  }
}
