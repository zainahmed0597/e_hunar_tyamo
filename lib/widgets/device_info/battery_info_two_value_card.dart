import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class BatteryInfoTwoValueCard extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subWidget;
  final Color? clr;
  final Color? textClr;
  const BatteryInfoTwoValueCard({super.key,
    required this.text,
    required this.value,
    this.subWidget, this.clr, this.textClr,
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
            subWidget ?? Text(
              value,
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
