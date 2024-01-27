import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../utils/colors.dart';
import '../../utils/string.dart';
import '../../widgets/auth/auth_heading.dart';
import '../../widgets/auth/auth_text_field.dart';

class ForgetPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgetPassBtnController = RoundedLoadingButtonController();

  ForgetPassword({super.key});

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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
              opacity: 0.3,
              image: AssetImage(
                profileBg,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: [
                AuthHeading(
                  mainText: forgetYourPassword,
                  logo: symbolImg,
                  subText: '',
                  fontSize: 18.sp,
                  logoSize: 18.sp,
                ),
                SizedBox(
                  height: 20.h,
                  width: 40.w,
                  child: Image.asset(
                    forgetPasswordImg,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  forgetPassText,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
                const SizedBox(height: 40),
                AuthTextField(
                  keyboardType: TextInputType.emailAddress,
                  labelText: email,
                  obscureText: false,
                  icon: Icons.alternate_email,
                  size: 15.sp,
                ),
                const SizedBox(height: 30),
                RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _forgetPassBtnController,
                  color: cyan,
                  onPressed: () {},
                  child: Text(
                    send,
                    style: GoogleFonts.poppins(
                      color: white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
