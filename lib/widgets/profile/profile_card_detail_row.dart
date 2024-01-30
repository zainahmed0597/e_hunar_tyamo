import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class CardDetailRow extends StatelessWidget {
  final String type;
  final String val;
  final Icon icon;
  final Color clr;

  const CardDetailRow(
      {super.key, required this.type, required this.val, required this.icon, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: [
            const SizedBox(width: 10),
            icon,
            const SizedBox(width: 10),
            Text(
              type,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    val,
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: val == "Not Currently Set" ? red : black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
