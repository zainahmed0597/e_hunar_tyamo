import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class DashboardGradientFeature extends StatelessWidget {
  final IconData iconWidget;
  final String btnText;
  final Color? btnTextColor;
  final Color? iconColor;
  final List<Color>? widgetBgColor;
  final FontWeight? textFontWeight;

  const DashboardGradientFeature({
    super.key,
    required this.iconWidget,
    required this.btnText,
    this.widgetBgColor,
    this.iconColor ,
    this.btnTextColor,
    this.textFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        alignment: Alignment.center,
        height: 58,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          gradient: LinearGradient(
            colors: widgetBgColor ?? [white, white],
          ),
          boxShadow: [
            BoxShadow(
              color: grey,
              offset: const Offset(0.0, 3.0),
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                iconWidget,
                color: iconColor ?? white,
                size: 38,
              ),
              const SizedBox(width: 4),
              Flexible(
                child: Text(
                  btnText,
                  style: GoogleFonts.nunito(
                    fontWeight: textFontWeight ?? FontWeight.w300,
                    color: btnTextColor ??  white,
                    fontSize: 14,
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
