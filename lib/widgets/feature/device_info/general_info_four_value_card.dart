import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';



class GeneralInfoFourValueCard extends StatelessWidget {
  final String text;
  final String value;
  final String textSec;
  final String valueSec;
  final Color? clr;
  final Color? textClr;

  const GeneralInfoFourValueCard({
    super.key,
    required this.text,
    required this.value,
    required this.textSec,
    required this.valueSec,
    this.clr,
    this.textClr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(5),
      // color: Colors.green,
      width: double.infinity,
      child: Card(
        color: clr ?? white,
        elevation: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: textClr ?? gradient25,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              textSec,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              valueSec,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: textClr ?? gradient25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
