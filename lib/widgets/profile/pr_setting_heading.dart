import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/colors.dart';

class ProfileSettingHeading extends StatelessWidget {
  final String headingText;

  const ProfileSettingHeading({super.key, required this.headingText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.centerLeft,
      child: Text(
        headingText,
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.w900,
          fontSize: 16,
          color: purple2,
        ),
      ),
    );
  }
}
