import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../utils/colors.dart';
import '../../utils/string.dart';
import '../../widgets/auth/auth_heading.dart';
import '../../widgets/auth/auth_text_field.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _loginBtnController = RoundedLoadingButtonController();

  Login({super.key});

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
                  mainText: loginPageText1,
                  subText: loginPageText3,
                  logo: symbolImg,
                  fontSize: 18,
                  logoSize: 24,
                ),
                const SizedBox(height: 60),
                AuthTextField(
                  keyboardType: TextInputType.emailAddress,
                  labelText: email,
                  obscureText: false,
                  icon: Icons.alternate_email,
                  size: 15,
                ),
                const SizedBox(height: 15),
                AuthTextField(
                  keyboardType: TextInputType.text,
                  labelText: password,
                  obscureText: true,
                  icon: Icons.password,
                  size: 15,
                ),
                const SizedBox(height: 30),
                RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _loginBtnController,
                  color: cyan,
                  onPressed: () {},
                  child: Text(
                    login,
                    style: GoogleFonts.poppins(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    forgetPassword,
                    style: GoogleFonts.poppins(
                      color: forgetBtnColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      noHaveAcc,
                      style: GoogleFonts.poppins(
                        color: grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      signUp,
                      style: GoogleFonts.poppins(
                        color: signUpBtnColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 160),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
