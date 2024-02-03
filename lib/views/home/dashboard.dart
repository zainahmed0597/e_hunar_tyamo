import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/utils/colors.dart';
import '../../utils/string.dart';
import '../../widgets/home/dashboard/dashboard_gradient_feature.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          // DashBoard main text here
          Container(
            alignment: Alignment.center,
            child: Text(
              dashboard,
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
          // Your Friend text here
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              yourFriend,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(
                color: purple,
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
                fontSize: 20,
              ),
            ),
          ),

          // Card custom widget here
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              elevation: 4,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 24, right: 16, top: 24, bottom: 4),
                        child: CircularProfileAvatar(
                          profileImg,
                          backgroundColor: cyan,
                          borderWidth: 2,
                          borderColor: purple,
                          radius: 40,
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
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.5),
                                    child: Icon(Icons.fiber_manual_record, color: grey2, size: 18),
                                  ),
                                  const SizedBox(width: 7),
                                  Text(
                                    userName,
                                    style: GoogleFonts.nunito(
                                        fontSize: 16, fontWeight: FontWeight.w800, color: black),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on, color: blue2, size: 30),
                                  const SizedBox(width: 0),
                                  Expanded(
                                    child: Text(
                                      locationAddress,
                                      style: GoogleFonts.nunito(
                                          fontSize: 12, fontWeight: FontWeight.w600, color: black),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  status,
                                  style: GoogleFonts.nunito(
                                    fontSize: 13,
                                    color: black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  offline,
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: red,
                                    fontWeight: FontWeight.w900,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: black,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  userStatus,
                                  style: GoogleFonts.nunito(
                                    fontSize: 13,
                                    color: black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  nAText,
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: red,
                                    fontWeight: FontWeight.w900,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: black,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  moodNAText,
                                  style: GoogleFonts.nunito(
                                    fontSize: 13,
                                    color: black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 4),

          // 3 widgets 'Device', 'Gallery', 'Moods' here
          Row(
            children: [
              Flexible(
                child: DashboardGradientFeature(
                  iconWidget: Icons.phone_iphone,
                  btnText: deviceInfoShort,
                  widgetBgColor: [gradient1, gradient2],
                ),
              ),
              Flexible(
                child: DashboardGradientFeature(
                  iconWidget: Icons.photo_library,
                  btnText: gallery,
                  widgetBgColor: [gradient3, gradient4],
                ),
              ),
              Flexible(
                child: DashboardGradientFeature(
                  iconWidget: Icons.mood_sharp,
                  btnText: moods,
                  widgetBgColor: [gradient5, gradient6],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Our Feature text here
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              ourFeatures,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(
                color: blue3,
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),

          // OurFeature btn widgets here
          Row(
            children: [
              Flexible(
                  child: DashboardGradientFeature(
                iconWidget: Icons.play_arrow,
                iconColor: gradient5,
                btnText: playlist,
                btnTextColor: black,
                textFontWeight: FontWeight.w900,
              )),
              const SizedBox(width: 10),
              Flexible(
                  child: DashboardGradientFeature(
                iconWidget: Icons.location_on,
                iconColor: blue2,
                btnText: location,
                btnTextColor: black,
                textFontWeight: FontWeight.w900,
              )),
            ],
          ),
          const SizedBox(height: 26),
          Row(
            children: [
              Flexible(
                  child: DashboardGradientFeature(
                iconWidget: Icons.note_add,
                iconColor: gradient3,
                btnText: toDoList,
                btnTextColor: black,
                textFontWeight: FontWeight.w900,
              )),
              const SizedBox(width: 10),
              Flexible(
                  child: DashboardGradientFeature(
                iconWidget: FontAwesomeIcons.book,
                iconColor: gradient1,
                btnText: diary,
                btnTextColor: black,
                textFontWeight: FontWeight.w900,
              )),
            ],
          ),
          const SizedBox(height: 26),
          Row(
            children: [
              Flexible(
                  child: DashboardGradientFeature(
                iconWidget: Icons.note,
                iconColor: cyan,
                btnText: surpriseNotes,
                btnTextColor: black,
                textFontWeight: FontWeight.w900,
              )),
              const SizedBox(width: 10),
              Flexible(
                  child: DashboardGradientFeature(
                iconWidget: FontAwesomeIcons.moon,
                iconColor: gradient5,
                btnText: horoscopes,
                btnTextColor: black,
                textFontWeight: FontWeight.w900,
              )),
            ],
          ),
          const SizedBox(height: 26),
          Row(
            children: [
              Flexible(
                  child: DashboardGradientFeature(
                iconWidget: FontAwesomeIcons.truck,
                iconColor: red,
                btnText: emergency,
                btnTextColor: black,
                textFontWeight: FontWeight.w900,
              )),
              const SizedBox(width: 10),
              Flexible(
                  child: DashboardGradientFeature(
                iconWidget: Icons.local_activity,
                iconColor: blue,
                btnText: activity,
                btnTextColor: black,
                textFontWeight: FontWeight.w900,
              )),
            ],
          ),
          const SizedBox(height: 26),
        ],
      ),
    );
  }
}
