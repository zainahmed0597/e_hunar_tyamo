import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/colors.dart';
import '../../../utils/string.dart';

class NewAlbumPost extends StatelessWidget {
  const NewAlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // AppBar here
      appBar: AppBar(
        title: SizedBox(
          height: 50,
          width: 92,
          child: Image.asset(
            logoImg,
            fit: BoxFit.fitWidth,
            filterQuality: FilterQuality.high,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: ListView(
        children: [
          SizedBox(
            height: 300,
            width: size.width * 0.8,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(bg3Network),
                )),
              ),
            ),
          ),
          // const SizedBox(height: 10.0),
          ListTile(
            leading: CircleAvatar(backgroundColor: purple),
            title: SizedBox(
              width: 250.0,
              child: TextField(
                controller: null,
                decoration: InputDecoration(
                  hintText: writeACaption,
                  border: InputBorder.none,
                ),
                onChanged: (value) {},
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: purple,
                // side: BorderSide(width: 2.0,color: purple),
              ),
              onPressed: () {},
              child: Text(
                postPic,
                style: GoogleFonts.poppins(
                  color: white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
