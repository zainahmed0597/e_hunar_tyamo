import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/string.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        title: Text(
          appName,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: appBarFontColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Text(
                      loginPageText1,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: loginPageTextColor,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset(symbolImg),
                    ),
                  ],
                ),
                Text(
                  loginPageText2,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: loginPageTextColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            TextField(
              textAlign: TextAlign.start,
              textInputAction: TextInputAction.none,
              obscureText: false,
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              textAlignVertical: TextAlignVertical.center,
              style: GoogleFonts.poppins(fontSize: 15),
              decoration: InputDecoration(
                filled: true,
                fillColor: textFiledColor,
                prefixIcon: const Icon(Icons.alternate_email, size: 15),
                prefixIconColor: prefixIconColor,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                label: Text(email, style: GoogleFonts.poppins(fontSize: 15, color: black),),
                labelStyle: GoogleFonts.poppins(fontSize: 15, color: black),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              textAlign: TextAlign.start,
              textInputAction: TextInputAction.none,
              obscureText: true,
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              textAlignVertical: TextAlignVertical.center,
              style: GoogleFonts.poppins(fontSize: 15),
              decoration: InputDecoration(
                filled: true,
                fillColor: textFiledColor,
                prefixIcon: const Icon(Icons.alternate_email, size: 15),
                prefixIconColor: prefixIconColor,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                label: Text(password, style: GoogleFonts.poppins(fontSize: 15, color: black),),
                labelStyle: GoogleFonts.poppins(fontSize: 15, color: black),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
