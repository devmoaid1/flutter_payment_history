import 'package:flutter/material.dart';

class PaymentHistoryScreen extends StatefulWidget {
  const PaymentHistoryScreen({Key key}) : super(key: key);

  @override
  _PaymentHistoryScreenState createState() => _PaymentHistoryScreenState();
}

class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Payment History",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            // decoration: BoxDecoration(
            //     border: Border.all(
            //   width: 2,
            //   color: Colors.grey,
            // )),
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Period",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("First Item",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Second Item"),
                        value: 2,
                      )
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(6),
                      height: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Text("payment Container"),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
