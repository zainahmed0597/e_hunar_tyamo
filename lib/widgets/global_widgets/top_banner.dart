import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../utils/colors.dart';

class TopBanner extends StatelessWidget {
  final String title;
  final List<Color> clr;

  const TopBanner({
    super.key,
    required this.title,
    required this.clr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 27.sp,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: clr,
      )),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          color: white,
          fontSize: 16.sp,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
