import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class DrawerWidget extends StatelessWidget {
  final IconData iconName;
  final String titleText;
  final Color iconColor ;

   const DrawerWidget({
    super.key,
    required this.iconName,
    required this.titleText,
     this.iconColor = const Color(0xff00C1AA),
  });

  // const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: Container(
          alignment: Alignment.center,
          height: 30,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  iconName,
                  color: iconColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  titleText,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 14, letterSpacing: 1, color: black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
