import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/utils/colors.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import '../../../utils/string.dart';

import '../../../widgets/feature/album/gallery_header.dart';
import 'album_post.dart';

class MyAlbum extends StatelessWidget {
  const MyAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(
            context: context,
            isEditable: true,
            tOValue: totalOpenValue,
            tUValue: totalUploadValue,
            name: '$userName $gallery',
            description: description,
          ),
          const SizedBox(height: 4),
          StaggeredGridView.countBuilder(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 4,
            itemCount: 6,
            staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 2 : 3),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 12.0,
            itemBuilder: (BuildContext context, int index) {
              return FocusedMenuHolder(
                menuItems: <FocusedMenuItem>[
                  // Add Each FocusedMenuItem  for Menu Options
                  FocusedMenuItem(
                      title: Text(
                        open,
                        style: GoogleFonts.nunito(),
                      ),
                      trailingIcon: const Icon(Icons.open_in_new),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const AlbumPost()));
                      }),
                  FocusedMenuItem(
                      title: Text(
                        delete,
                        style: GoogleFonts.nunito(color: Colors.redAccent),
                      ),
                      trailingIcon: const Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {}),
                ],
                menuWidth: MediaQuery.of(context).size.width * 0.5,
                blurSize: 5.0,
                menuItemExtent: 45,
                menuBoxDecoration: const BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(15.0))),

                duration: const Duration(milliseconds: 100),

                blurBackgroundColor: Colors.black54,
                animateMenuItems: true,
                openWithTap: false,
                // Open Focused-Menu on Tap rather than Long Press
                menuOffset: 10.0,
                // Offset value to show menuItem from the selected item
                bottomOffsetHeight: 80.0,
                // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.

                onPressed: () {},
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AlbumPost()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Hero(
                      tag: 'imageHero',
                      child: Image.network(
                        bg2Network,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

