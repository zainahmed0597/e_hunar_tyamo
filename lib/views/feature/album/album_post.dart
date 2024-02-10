import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/utils/colors.dart';
import 'dart:ui' as prefix0;
import '../../../utils/string.dart';
import '../../../widgets/global_widgets/logo_app_bar.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(title: const Text('Full Screen Image')),
      body: SafeArea(
          child: Column(
        children: [
          // parent of Top whole widget here
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
            child: Container(
              height: size.height * 0.63,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    bg2Network,
                  ),
                ),
              ),
              child: BackdropFilter(
                filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                  child: Column(
                    children: [
                      // Custom AppBar here
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Back Screen Button here
                          GestureDetector(
                            onTap: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                          // Logo App Bar here
                          const LogoAppBar(),
                          // Profile Image here
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircularProfileAvatar(
                              profileImg,
                              backgroundColor: cyan,
                              borderWidth: 1,
                              borderColor: purple,
                              radius: 22,
                              elevation: 20,
                              cacheImage: true,
                              animateFromOldImageOnUrlChange: true,
                              errorWidget: (context, url, error) {
                                return const Icon(
                                  Icons.face,
                                  size: 20,
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
                        ],
                      ),
                      const SizedBox(height: 12),
                      // Custom Responsive Image here
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: size.height * 0.443,
                          width: size.width * 0.88,
                          child: Image.network(
                            bg2Network,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Slider here
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            // Slider radius here
                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        // Size box of slider
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          // Row of heart and slider
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //Heart Icon here
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 35,
                              ),
                              const SizedBox(width: 15),
                              // Slider here
                              BalloonSlider(
                                color: cyan,
                                value: 0.0,
                                ropeLength: 40,
                                showRope: true,
                                onChangeStart: (val) {},
                                onChanged: (val) {},
                                onChangeEnd: (val) {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Comment Area here
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      caption,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        color: Colors.cyan,
                      ),
                    ),
                    GestureDetector(
                      child: const Icon(
                        Icons.edit,
                        color: Colors.cyan,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
