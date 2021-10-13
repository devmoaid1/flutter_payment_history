import 'package:flutter/material.dart';
import 'package:flutter_payment_history/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Flexible(
                        flex: 1,
                        child: Material(
                          elevation: 1,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 55,
                            width: 55,
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://image.freepik.com/free-photo/handsome-young-man-with-new-stylish-haircut_176420-19637.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "Deliver to",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                IconButton(
                                    icon: Icon(
                                      IconlyLight.arrow_down_2,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                    onPressed: () {
                                      print("Pressed");
                                    })
                              ],
                            ),
                            Text("Jalan Pendidikan 1,Skudai,johor",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.search,
                            color: Color(0xffffffff).withOpacity(1),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffffffff).withOpacity(0.3)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "eRider eWallet",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "\$ 250.00",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 30),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Icon(
                                IconlyLight.plus,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "on Hold:\$25.00",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      )
                    ],
                  )
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
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
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
