import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "63,179.71",
              style: GoogleFonts.varelaRound(
                fontWeight: FontWeight.w400,
                fontSize: 70,
                color: const Color(0xff1A243A),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "USD",
                style: GoogleFonts.varelaRound(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color(0xffBDBEBF)),
              ),
            ),
          ],
        ),
        Text(
          "+ 2,161.42 (3.54%)",
          style: GoogleFonts.varelaRound(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: const Color(0xff67BF6B)),
        ),
      ],
    );
  }
}
