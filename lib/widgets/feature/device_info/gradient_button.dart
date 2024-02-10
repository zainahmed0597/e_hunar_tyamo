import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';



class GradientButton extends StatelessWidget {
  final String title;
  final List<Color> clr;
  final Color overlayColor;
  final bool isGradientVertical;

  const GradientButton({
    super.key,
    required this.title,
    required this.clr,
    required this.overlayColor,
    required this.isGradientVertical,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1.5),
      width: double.infinity,
      child: Card(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: isGradientVertical ? Alignment.topCenter : Alignment.centerLeft,
              end: isGradientVertical ? Alignment.bottomCenter : Alignment.centerRight,
              colors: clr,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              elevation: const MaterialStatePropertyAll(0),
              overlayColor: MaterialStatePropertyAll(overlayColor),
              padding: const MaterialStatePropertyAll(
                EdgeInsets.all(0),
              ),
              backgroundColor: const MaterialStatePropertyAll(
                Colors.transparent,
              ),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900,
                    color: white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
