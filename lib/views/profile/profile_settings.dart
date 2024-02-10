import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/utils/colors.dart';
import '../../utils/string.dart';
import '../../widgets/profile/pr_setting_heading.dart';
import '../../widgets/profile/pr_setting_sub.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // BG curve widget here
            Container(
              height: 330,
              decoration: BoxDecoration(
                color: purple2,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(MediaQuery.of(context).size.width, 130),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  // Icon and Setting text here
                  Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: white,
                        size: 23,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        setting,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                          color: white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Card here
                  Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        // CircularProfileAvatar, and Text here
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 16),
                          child: Row(
                            children: [
                              CircularProfileAvatar(
                                profileImg,
                                backgroundColor: cyan,
                                borderWidth: 2,
                                borderColor: purple,
                                radius: 35,
                                elevation: 20,
                                cacheImage: true,
                                animateFromOldImageOnUrlChange: true,
                                placeHolder: (context, url) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },
                                onTap: () {},
                                errorWidget: (context, url, error) {
                                  return const Icon(
                                    Icons.face,
                                    size: 80,
                                  );
                                },
                              ),
                              const SizedBox(width: 20),

                              // Name text here
                              Text(
                                userFullName,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: black,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Divider(
                          height: 5,
                          color: Colors.grey.shade200,
                        ),
                        const SizedBox(height: 20),

                        // Profile Setting Heading text here
                        ProfileSettingHeading(headingText: profileSetting),
                        const SizedBox(height: 15),

                        // Sub text here
                        ProfileSettingSub(title: editName),
                        ProfileSettingSub(title: editPhoneNumber),
                        ProfileSettingSub(title: changePass),
                        ProfileSettingSub(
                          title: emailStatus,
                          secondaryWidget: Row(
                            children: [
                              Text(
                                notVerified,
                                style: GoogleFonts.nunito(fontWeight: FontWeight.w600, color: red),
                              ),
                              const SizedBox(width: 10),
                              const Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),

                        // Notification Setting here
                        ProfileSettingHeading(headingText: notificationSetting),
                        const SizedBox(height: 15),
                        // Sub text and notification button here
                        ProfileSettingSub(
                            title: pushNotification,
                            secondaryWidget: GFToggle(
                              onChanged: (val) {},
                              enabledTrackColor: cyan,
                              type: GFToggleType.android,
                              value: true,
                            )),
                        const SizedBox(height: 15),

                        // Notification Setting here
                        ProfileSettingHeading(headingText: applicationSetting),
                        const SizedBox(height: 15),

                        ProfileSettingSub(
                          title: backgroundUpdates,
                          secondaryWidget: Row(
                            children: [
                              Text(
                                notVerified,
                                style: GoogleFonts.nunito(fontWeight: FontWeight.w600, color: red),
                              ),
                              const SizedBox(width: 10),
                              const Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 14,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
