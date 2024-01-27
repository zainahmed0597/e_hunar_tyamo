import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/string.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: white,
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          title: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              logoImg,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: purple,
            ),
            child: Text(
              seeReceivedInviteText,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: white,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset(emptyImg),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                yourReceivedInviteText,
                style: GoogleFonts.nunito(
                  color: cyan,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                emptyText,
                style: GoogleFonts.nunito(
                  color: purple,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
