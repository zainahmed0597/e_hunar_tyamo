import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class OneValueCard extends StatelessWidget {
  final String value;
  final Color clr;
  final Color? textClr;
  const OneValueCard({
    super.key, required this.value, required this.clr, this.textClr,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      // color: red,
      child: Card(
        color: clr,
        elevation: 4,
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    value,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color:textClr ?? white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
