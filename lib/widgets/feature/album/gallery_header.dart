import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../utils/string.dart';

class GalleryHeader extends StatelessWidget {
  final BuildContext context;
  final int tUValue;
  final int tOValue;
  final String name;
  final String description;
  final bool isEditable;

  const GalleryHeader({
    super.key,
    required this.context,
    required this.tUValue,
    required this.tOValue,
    required this.name,
    required this.description,
    required this.isEditable,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: gradient33,
        boxShadow: [
          BoxShadow(
            color: grey,
            offset: const Offset(0.0, 0.008),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        children: [
          // Gradient curve widget, (Text, Profile, Profile Name, Description)
          Container(
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(55),
                bottomRight: Radius.circular(55),
              ),
              gradient: LinearGradient(colors: [gradient3, gradient4]),
              boxShadow: [
                BoxShadow(
                  color: grey,
                  offset: const Offset(0.0, 0.008),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Gallery Text here
                Text(
                  gallery,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: white,
                  ),
                ),

                // Partner Profile Image
                CircularProfileAvatar(
                  profileImg,
                  backgroundColor: cyan,
                  borderWidth: 2,
                  borderColor: purple,
                  radius: 50,
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

                // Your profile name here
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                    color: white,
                  ),
                ),

                // Description about this album
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      totalUpload,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunito(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      tUValue.toString(),
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.deepOrangeAccent,
                      ),
                    )
                  ],
                ),
                isEditable
                    ? GestureDetector(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [gradient35, gradient36])),
                    child: Icon(
                      Icons.edit,
                      color: white,
                    ),
                  ),
                  onTap: () {
                    // Popup dialog here
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.noHeader,
                        animType: AnimType.scale,
                        body: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              minLines: 2,
                              decoration: InputDecoration(
                                labelText: albumDescription,
                                labelStyle: GoogleFonts.nunito(
                                  color: black,
                                ),
                                fillColor: black,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: const BorderSide(
                                    color: Colors.green,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: const BorderSide(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        btnOkOnPress: () {})
                        .show();
                  },
                )
                    : Container(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      totalOpened,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunito(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      tOValue.toString(),
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.deepOrangeAccent,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
