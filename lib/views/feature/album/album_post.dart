import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
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
        // First half Column widget here
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // parent of Top whole widget here
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
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
                                    padding: const EdgeInsets.only(right: 18, top: 10, bottom: 10),
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
                              const SizedBox(height: 6),
                              // Custom Responsive Image here
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  height: size.height * 0.449,
                                  width: size.width * 0.92,
                                  child: Image.network(
                                    bg2Network,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 13),
                              // Slider here
                              Container(
                                decoration: BoxDecoration(
                                    color: white,
                                    // Slider radius here
                                    borderRadius: const BorderRadius.all(Radius.circular(14))),
                                // Size box of slider
                                child: SizedBox(
                                  height: 50,
                                  width: size.width * 0.71,
                                  // Row of heart and slider
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  // Second half here
                  // Comment Area here
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row of caption text and edit icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Caption text widget
                            Text(
                              caption,
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                color: Colors.cyan,
                              ),
                            ),
                            // Tap able Edit Icon button
                            GestureDetector(
                              child: const Icon(
                                Icons.edit,
                                color: Colors.cyan,
                              ),
                              onTap: () {
                                // tap able textField here
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.noHeader,
                                  dismissOnBackKeyPress: true,
                                  isDense: false,
                                  title: '$edit $caption',
                                  btnOkText: '$confirm $caption',
                                  body: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      // textField here
                                      child: TextField(
                                        decoration: InputDecoration(
                                          fillColor: black,
                                          labelText: enterNewCaption,
                                          labelStyle: GoogleFonts.nunito(color: black),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(18),
                                              borderSide: BorderSide(color: purple2)),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(18),
                                              borderSide: const BorderSide(color: Colors.black)),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(18),
                                            borderSide: BorderSide(color: purple2),
                                          ),
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 1,
                                        maxLines: null,
                                        controller: null,
                                      ),
                                    ),
                                  ),
                                  btnOkOnPress: () {},
                                ).show();
                              },
                            ),
                          ],
                        ),
                        // Expandable Text here and Focused Menu Holder use here
                        FocusedMenuHolder(
                          menuWidth: size.width * 0.50,
                          blurSize: 2.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            color: Colors.grey,
                          ),
                          duration: const Duration(milliseconds: 50),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset: 10.0,
                          bottomOffsetHeight: 80.0,
                          // menu items here as many you want
                          menuItems: [
                            FocusedMenuItem(
                              title: Text(copy, style: GoogleFonts.nunito(color: black)),
                              trailingIcon: const Icon(FontAwesomeIcons.copy),
                              onPressed: () {},
                            ),
                            FocusedMenuItem(
                              title: Text(edit, style: GoogleFonts.nunito(color: white)),
                              backgroundColor: Colors.red,
                              trailingIcon: Icon(
                                FontAwesomeIcons.penToSquare,
                                color: white,
                              ),
                              onPressed: () {
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.noHeader,
                                  dismissOnBackKeyPress: true,
                                  isDense: false,
                                  title: '$edit $caption',
                                  btnOkText: '$confirm $caption',
                                  body: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          fillColor: black,
                                          labelText: enterNewCaption,
                                          labelStyle: GoogleFonts.nunito(color: black),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(18),
                                              borderSide: BorderSide(color: purple2)),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(18),
                                              borderSide: const BorderSide(color: Colors.black)),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(18),
                                            borderSide: BorderSide(color: purple2),
                                          ),
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 1,
                                        maxLines: null,
                                        controller: null,
                                      ),
                                    ),
                                  ),
                                  btnOkOnPress: () {},
                                ).show();
                              },
                            ),
                          ],
                          onPressed: () {},
                          // Expandable Text here
                          child: ExpandableText(
                            blabla,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400,
                              color: black,
                            ),
                            maxLines: 2,
                            expandText: 'show more',
                            collapseText: 'show less',
                            linkColor: Colors.orange,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          comment,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            color: Colors.purple,
                            letterSpacing: 1,
                            fontSize: 18,
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return FocusedMenuHolder(
                              menuWidth: size.width * 0.50,
                              blurSize: 2.0,
                              menuItemExtent: 45,
                              menuBoxDecoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              duration: const Duration(milliseconds: 100),
                              animateMenuItems: true,
                              blurBackgroundColor: Colors.black54,
                              menuOffset: 10.0,
                              bottomOffsetHeight: 80.0,
                              onPressed: () {},
                              menuItems: [
                                FocusedMenuItem(
                                  title: Text(copy, style: GoogleFonts.nunito(color: black)),
                                  trailingIcon: const Icon(FontAwesomeIcons.copy),
                                  onPressed: () {},
                                ),
                                FocusedMenuItem(
                                  title: Text(edit, style: GoogleFonts.nunito(color: white)),
                                  backgroundColor: Colors.red,
                                  trailingIcon: Icon(
                                    FontAwesomeIcons.penToSquare,
                                    color: white,
                                  ),
                                  onPressed: () {
                                    AwesomeDialog(
                                      context: context,
                                      animType: AnimType.scale,
                                      dialogType: DialogType.noHeader,
                                      dismissOnBackKeyPress: true,
                                      isDense: false,
                                      title: '$edit $caption',
                                      btnOkText: '$confirm $caption',
                                      body: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              fillColor: black,
                                              labelText: enterNewCaption,
                                              labelStyle: GoogleFonts.nunito(color: black),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(18),
                                                  borderSide: BorderSide(color: purple2)),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(18),
                                                  borderSide: const BorderSide(color: Colors.black)),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(18),
                                                borderSide: BorderSide(color: purple2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.multiline,
                                            minLines: 1,
                                            maxLines: null,
                                            controller: null,
                                          ),
                                        ),
                                      ),
                                      btnOkOnPress: () {},
                                    ).show();
                                  },
                                ),
                              ],
                              child: ListTileMoreCustomizable(
                                title: Text(
                                  atTheRateUser,
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    color: Colors.cyan,
                                  ),
                                ),
                                leading: const GFAvatar(
                                  backgroundColor: Colors.blue,
                                  size: 25,
                                ),
                                horizontalTitleGap: 0.0,
                                minVerticalPadding: 6.0,
                                minLeadingWidth: 54.0,
                                contentPadding: const EdgeInsets.all(0),
                                // isThreeLine: false,
                                subtitle: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    comment1,
                                    style: GoogleFonts.nunito(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                trailing: Text(
                                  oneMinAgo,
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onTap: null,
                                onLongPress: null,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0,bottom: 16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Expanded(
                  child: TextField(
                    controller: null,
                    focusNode: null,
                    keyboardType: TextInputType.multiline,
                    textCapitalization: TextCapitalization.sentences,
                    minLines: 1,
                    // maxLength: 3,
                    style: GoogleFonts.nunito(color: white),
                    onChanged: (val) {},
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios,
                          color: white,
                        ),
                        hintText: 'Start a conversion',
                        hintStyle: GoogleFonts.nunito(
                          color: white,
                        ),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            borderSide: BorderSide.none),
                        contentPadding: const EdgeInsets.all(20),
                        filled: true,
                        fillColor: Colors.orange),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
