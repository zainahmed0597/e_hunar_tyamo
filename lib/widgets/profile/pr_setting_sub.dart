import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class ProfileSettingSub extends StatelessWidget {
  final String title;
  final Widget? secondaryWidget;

  const ProfileSettingSub({super.key, required this.title, this.secondaryWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w500,
              color: black,
            ),
          ),
          secondaryWidget ??
              const Icon(
                FontAwesomeIcons.arrowRight,
                size: 14,
              ),
        ],
      ),
    );
  }
}
