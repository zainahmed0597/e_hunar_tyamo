import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/utils/colors.dart';

class TwoValueCard extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subWidget;
  final Color? clr;
  final Color? textClr;

  const TwoValueCard({
    super.key,
    required this.text,
    required this.value,
    this.subWidget,
    this.clr,
    this.textClr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr ?? white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(height: 5),
            subWidget ??
                Text(
                  value,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900,
                    color: textClr ?? gradient25,
                    fontSize: 18,
                  ),
                )
          ],
        ),
      ),
    );
  }
}
