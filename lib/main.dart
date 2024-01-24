import 'package:flutter/material.dart';
import 'package:tyamo/views/auth/register.dart';

import 'utils/string.dart';
import 'views/auth/login.dart';

void main() {
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      home: Register(),
    );
  }
}

