import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class DelierverToRow extends StatelessWidget {
  const DelierverToRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 40,
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
    );
  }
}
