import 'package:flutter/material.dart';
import 'package:flutter_payment_history/business%20Logic/blocs/payment_history_bloc/payment_history_bloc1.dart';

import 'package:flutter_payment_history/constants/constants.dart';
import 'package:flutter_payment_history/data/models/Payment.dart';

import 'package:google_fonts/google_fonts.dart';

import 'widgets/paymentList.dart';

class PaymentHistoryScreen extends StatelessWidget {
  PaymentHistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 35,
                        ),
                        Material(
                          elevation: 1,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://image.freepik.com/free-photo/handsome-young-man-with-new-stylish-haircut_176420-19637.jpg"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "History",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: appDarkBlue,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ), //AppBar

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey[200], width: 2)),
                    child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffF2F2F2)),
                      labelColor: appDarkBlue,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            "Payments",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: appDarkBlue,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Orders",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: appDarkBlue,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ), //tabs

                  SizedBox(
                    height: 10,
                  ),

                  Expanded(
                    child: TabBarView(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: StreamBuilder(
                                  stream: paymentBloc.paymentObservable,
                                  builder: (context,
                                      AsyncSnapshot<List<Payment>> snapshot) {
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          backgroundColor: Colors.orange,
                                        ),
                                      );
                                    } else if (snapshot.hasError) {
                                      return Center(
                                        child: Text("something went wrong"),
                                      );
                                    } else if (snapshot.hasData) {
                                      final payments = snapshot.data;
                                      return ListView.builder(
                                          padding: const EdgeInsets.all(8.0),
                                          itemCount: payments.length,
                                          itemBuilder: (context, index) =>
                                              ListTile(
                                                title: Text(
                                                  payments[index].paymentName,
                                                  style: GoogleFonts.poppins(
                                                      color: appDarkBlue,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                subtitle: Text(
                                                  "3:24 AM | ${payments[index].paymentDate}",
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xff7D8499),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14),
                                                ),
                                                trailing: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    payments[index]
                                                                .type ==
                                                            "reload"
                                                        ? Text(
                                                            "+${payments[index].amount}",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        17,
                                                                    color: Colors
                                                                        .green,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600))
                                                        : Text(
                                                            "-${payments[index].amount}",
                                                            style: GoogleFonts.poppins(
                                                                fontSize: 17,
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)),
                                                    Expanded(
                                                      child: GestureDetector(
                                                        onTap: () {},
                                                        child: Text(
                                                          "Details",
                                                          style: GoogleFonts.poppins(
                                                              color: Color(
                                                                  0xff696E80),
                                                              fontSize: 15,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ));
                                    }
                                    return Container();
                                  }),
                            ),
                          ],
                        ),
                        Center(
                            child: Text(
                          "Here is List of orders",
                          style: GoogleFonts.poppins(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ))
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
// class PaymentHistoryScreen extends StatefulWidget {
//   const PaymentHistoryScreen({Key key}) : super(key: key);

//   @override
//   _PaymentHistoryScreenState createState() => _PaymentHistoryScreenState();
// }

// class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {
//   @override
//   void initState() {
//     super.initState();
//     paymentBloc..getPayments();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: appOrange,
//           title: Center(
//             child: Text("Payment History", style: appBarTextStyle),
//           ),
//         ),
//         body: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.grey[100],
//                   boxShadow: <BoxShadow>[
//                     BoxShadow(
//                         color: Colors.grey[50],
//                         blurRadius: 10.0,
//                         offset: Offset(0.0, 0.50))
//                   ]),
//               height: 70,
//               width: MediaQuery.of(context).size.width,
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Mounth :",
//                       style: GoogleFonts.raleway(
//                           fontSize: 22,
//                           fontWeight: FontWeight.w800,
//                           color: Colors.grey[700]),
//                     ),
//                     SizedBox(
//                       width: 6,
//                     ),
//                     MonthsDropButton(),
//                   ],
//                 ),
//               ),
//             ),
//             StreamBuilder(
//                 stream: paymentBloc.paymentObservable,
//                 builder: (context, AsyncSnapshot<List<Payment>> snapshot) {
//                   if (!snapshot.hasData) {
//                     return Center(
//                       child: CircularProgressIndicator(
//                         backgroundColor: Colors.orange,
//                       ),
//                     );
//                   } else if (snapshot.hasError) {
//                     return Center(
//                       child: Text("something went wrong"),
//                     );
//                   } else if (snapshot.hasData) {
//                     var payments = snapshot.data;
//                     if (payments.length == 0) {
//                       return Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             height: 200,
//                           ),
//                           Text(
//                             "There are no Payments on this month",
//                             style: GoogleFonts.lato(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w600,
//                                 decorationThickness: 3,
//                                 fontSize: 20),
//                           ),
//                         ],
//                       );
//                     }
//                     return Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: buildPaymentsList(snapshot, payments),
//                       ),
//                     );
//                   }
//                   return Container();
//                 })
//           ],
//         ));
//   }
// }
