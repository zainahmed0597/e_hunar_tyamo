import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/utils/string.dart';

import '../../utils/colors.dart';
import '../../widgets/profile/profile_card_detail_row.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool more = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          // Profile main text here
          Container(
            alignment: Alignment.center,
            child: Text(
              profile,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w900,
                fontSize: 22,
                color: black,
                letterSpacing: 2,
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Profile picture here
          Container(
            height: 270,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bg1),
                fit: BoxFit.cover,
              ),
            ),
            child: CircularProfileAvatar(
              profileImg,
              backgroundColor: cyan,
              borderWidth: 2,
              borderColor: purple,
              radius: 100,
              elevation: 20,
              cacheImage: true,
              animateFromOldImageOnUrlChange: true,
              errorWidget: (context, url, error) {
                return const Icon(
                  Icons.face,
                  size: 80,
                );
              },
              placeHolder: (context, url) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              onTap: () {},
            ),
          ),
          const SizedBox(height: 10),

          // User text here
          Text(
            userName,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 2),

          // At the rate user text here
          Text(
            atTheRateUser,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 30),

          // Edit Profile Detail Button here
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: white,
              side: BorderSide(width: 2.0, color: purple),
            ),
            onPressed: () {},
            child: Text(
              editProfileDetailText,
              style: GoogleFonts.poppins(
                color: purple,
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),
          ),
          const SizedBox(height: 30),

          // User profile detail widgets
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    CardDetailRow(
                      type: email,
                      val: userEmail,
                      icon: const Icon(Icons.alternate_email),
                      clr: Colors.grey.shade200,
                    ),
                    CardDetailRow(
                      type: country,
                      val: countryName,
                      icon: const Icon(Icons.public),
                      clr: Colors.transparent,
                    ),
                    CardDetailRow(
                      type: phoneNumber,
                      val: phoneNumberData,
                      icon: const Icon(Icons.phone),
                      clr: Colors.grey.shade200,
                    ),
                    more
                        ? CardDetailRow(
                            type: gender,
                            val: male,
                            icon: const Icon(FontAwesomeIcons.venusMars),
                            clr: Colors.transparent,
                          )
                        : Container(),
                    more
                        ? CardDetailRow(
                            type: partner,
                            val: partnerName,
                            icon: const Icon(Icons.group),
                            clr: Colors.grey.shade200,
                          )
                        : Container(),
                    more
                        ? CardDetailRow(
                            type: uid,
                            val: uidDetail,
                            icon: const Icon(Icons.fingerprint),
                            clr: Colors.transparent,
                          )
                        : Container(),
                    more
                        ? CardDetailRow(
                            type: accountCreated,
                            val: accountCreatedDate,
                            icon: const Icon(FontAwesomeIcons.clock),
                            clr: Colors.grey.shade200,
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // Show More Button here
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: more ? purple : white,
              side: BorderSide(width: 2.0, color: purple),
            ),
            onPressed: () {
              setState(() {
                more = !more;
              });
            },
            child: Text(
              more ? showLess : showMore,
              style: GoogleFonts.poppins(
                color: more ? white : purple,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Packages widgets
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [gradient7, gradient8]),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      subscribedTo,
                      style: GoogleFonts.nunito(
                        color: white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      freePackage,
                      style: GoogleFonts.nunito(
                        color: white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      subscribedOn,
                      style: GoogleFonts.nunito(
                        color: white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      nAText,
                      style: GoogleFonts.nunito(
                        color: white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

