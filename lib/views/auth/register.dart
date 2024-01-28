import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/views/auth/login.dart';
import '../../utils/colors.dart';
import '../../utils/string.dart';
import '../../widgets/auth/auth_heading.dart';
import '../../widgets/auth/auth_text_field.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerBtnController = RoundedLoadingButtonController();

  Register({super.key});

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
                  mainText: loginPageText2,
                  subText: loginPageText3,
                  logo: symbolImg,
                  fontSize: 18.sp,
                  logoSize: 18.sp,
                ),
                const SizedBox(height: 60),
                AuthTextField(
                  keyboardType: TextInputType.emailAddress,
                  labelText: email,
                  obscureText: false,
                  icon: Icons.alternate_email,
                  size: 15.sp,
                ),
                const SizedBox(height: 15),
                AuthTextField(
                  keyboardType: TextInputType.text,
                  labelText: password,
                  obscureText: true,
                  icon: Icons.password,
                  size: 15.sp,
                ),
                const SizedBox(height: 15),
                AuthTextField(
                  keyboardType: TextInputType.text,
                  labelText: confirmPassword,
                  obscureText: true,
                  icon: Icons.lock_reset,
                  size: 15.sp,
                ),
                const SizedBox(height: 30),
                Hero(
                  tag: 'auth',
                  child: RoundedLoadingButton(
                    width: 2000,
                    borderRadius: 10,
                    controller: _registerBtnController,
                    color: cyan,
                    onPressed: () {},
                    child: Text(
                      signUp,
                      style: GoogleFonts.poppins(
                        color: white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    signUpText,
                    style: GoogleFonts.poppins(
                      color: grey2,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      alreadyRegister,
                      style: GoogleFonts.poppins(
                        color: grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: Login(),
                          ),
                        );
                      },
                      child: Text(
                        signIn,
                        style: GoogleFonts.poppins(
                          color: blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 110),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
