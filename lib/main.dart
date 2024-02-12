import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/views/feature/album/album_new_post.dart';

import 'utils/string.dart';

void main() {
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        title: appName,
        home: const NewAlbumPost(),
        // home: const HomePage(),
      );
    });
  }
}
