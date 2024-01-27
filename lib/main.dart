import 'package:flutter/material.dart';
import 'package:tyamo/views/invitation/accept_invite.dart';
import 'package:tyamo/views/invitation/invite_friend.dart';
import 'utils/string.dart';

void main() {
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      home: const InviteFriend(),
    );
  }
}
