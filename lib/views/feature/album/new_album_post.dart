import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/string.dart';


class NewAlbumPost extends StatelessWidget {
  const NewAlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar here
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            logoImg,
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: white,
        centerTitle: true,
        leading: IconButton(
          color: black,
          icon: Icon(
            Icons.arrow_back_ios,
            color: black,
          ),
          onPressed: () {
            // Navigator.of(context).pop();
          },
        ),
      ),
      body: const Center(
        child: Text('Testing'),
      ),
    );
  }
}
