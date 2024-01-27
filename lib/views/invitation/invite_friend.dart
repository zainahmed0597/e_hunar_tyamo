import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/colors.dart';
import '../../utils/string.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: white,
          centerTitle: true,
          leading: null,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.person_outlined,
                color: Colors.purple,
                size: 35,
              ),
            ),
          ],
          title: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              logoImg,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: cyan,
            ),
            child: Text(
              findYourFriendText,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: white,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    // width: 300,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            blurRadius: 10,
                            color: Colors.grey.withOpacity(0.3),
                          )
                        ]),
                    child: TextField(
                      // textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 12,
                        ),
                        hintText: typeUserName,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          // const SizedBox(height: 20),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: SizedBox(
          //     width: double.infinity,
          //     child: Card(
          //       elevation: 4,
          //       color: Colors.white,
          //       shape: const RoundedRectangleBorder(
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(20),
          //         ),
          //       ),
          //       child: Column(
          //         children: [
          //           Row(
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.fromLTRB(8, 14, 8, 14),
          //                 child: SizedBox(
          //                   height: 60,
          //                   width: 60,
          //                   child: CircularProfileAvatar(
          //                     '',
          //                     backgroundColor: Colors.blue,
          //                     radius: 35,
          //                   ),
          //                 ),
          //               ),
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Padding(
          //                     padding: const EdgeInsets.only(
          //                       top: 5,
          //                       bottom: 5,
          //                     ),
          //                     child: Text(
          //                       'Zain Ahmed',
          //                       style: GoogleFonts.poppins(fontSize: 17),
          //                     ),
          //                   ),
          //                   Padding(
          //                     padding: const EdgeInsets.only(left: 0.0),
          //                     child: Text(
          //                       '@xano05',
          //                       style: GoogleFonts.poppins(
          //                         color: Colors.grey,
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               const Spacer(),
          //               Padding(
          //                 padding: const EdgeInsets.only(right: 8),
          //                 child: Row(children: [
          //                   GFButton(
          //                     onPressed: () {},
          //                     shape: GFButtonShape.pills,
          //                     color: cyan,
          //                     child: Text(accept),
          //                   ),
          //                   const SizedBox(width: 8),
          //                   GFButton(
          //                     onPressed: () {},
          //                     shape: GFButtonShape.pills,
          //                     color: forgetBtnColor,
          //                     child: Text(decline),
          //                   ),
          //                 ]),
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset(inviteFriendImg),
          ),
          const SizedBox(height: 20),
          Text(
            searchFriendText,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            onPressed: () {},
            child: Text(
              inviteFriendText,
              style: GoogleFonts.poppins(
                color: white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}