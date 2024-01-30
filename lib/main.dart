import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'utils/string.dart';
import 'views/home/home_page.dart';

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
        // home: const ProfileSettings(),
        home: const HomePage(),
      );
    });
  }
}
