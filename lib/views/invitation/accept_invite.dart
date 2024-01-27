import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
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
            height: 27.sp,
            width: double.infinity,
            decoration: BoxDecoration(
              color: purple,
            ),
            child: Text(
              seeReceivedInviteText,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: white,
                fontSize: 16.sp,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 14, 8, 14),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: CircularProfileAvatar(
                              '',
                              backgroundColor: Colors.blue,
                              radius: 35,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Text(
                                'Zain Ahmed',
                                style: GoogleFonts.poppins(fontSize: 16.sp),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                '@xano05',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(children: [
                            GFButton(
                              onPressed: () {},
                              shape: GFButtonShape.pills,
                              color: cyan,
                              child: Text(
                                accept,
                                style: GoogleFonts.poppins(fontSize: 13.sp),
                              ),
                            ),
                            const SizedBox(width: 8),
                            GFButton(
                              onPressed: () {},
                              shape: GFButtonShape.pills,
                              color: red,
                              child: Text(decline,
                                style: GoogleFonts.poppins(fontSize: 13.sp),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 35.h,
            width: 65.w,
            child: Image.asset(emptyImg),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                yourReceivedInviteText,
                style: GoogleFonts.nunito(
                  color: cyan,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                emptyText,
                style: GoogleFonts.nunito(
                  color: purple,
                  fontSize: 14.sp,
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
