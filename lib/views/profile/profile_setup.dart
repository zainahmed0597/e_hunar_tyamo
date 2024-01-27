import 'dart:async';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/utils/colors.dart';
import 'package:tyamo/views/invitation/invite_friend.dart';
import 'package:tyamo/widgets/auth/auth_text_field.dart';

import '../../utils/string.dart';

class ProfileSetup extends StatefulWidget {

  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _profileSetupBtnController = RoundedLoadingButtonController();

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            logoImg,
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: white,
        centerTitle: true,
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
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgProfileColor,
                ),
                child: Text(
                  profileSetupText,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: white,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    CircularProfileAvatar(
                      profileImg,
                      backgroundColor: cyan,
                      initialsText: Text(
                        '+',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                    AuthTextField(
                      keyboardType: TextInputType.text,
                      labelText: yourName,
                      obscureText: false,
                      icon: Icons.face,
                      size: 16,
                    ),
                    const SizedBox(height: 20),
                    AuthTextField(
                      keyboardType: TextInputType.text,
                      labelText: yourUserName,
                      obscureText: false,
                      icon: Icons.alternate_email,
                      size: 16,
                    ),
                    const SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: isMale ? cyan: Colors.grey,
                              shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1.0, 9.0),
                                  blurRadius: 30,
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.male,
                              color: white,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration:  BoxDecoration(
                              color: !isMale ?  Colors.purple : Colors.grey ,
                              shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1.0, 9.0),
                                  blurRadius: 30,
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.female,
                              color: white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    RoundedLoadingButton(
                      width: 2000,
                      borderRadius: 10,
                      controller: _profileSetupBtnController,
                      color: cyan,
                      onPressed: () {
                        Timer(const Duration(seconds: 3), () {
                          _profileSetupBtnController.success();
                        });
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: const InviteFriend(),
                          ),
                        );
                      },
                      child: Text(
                        next,
                        style: GoogleFonts.poppins(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
