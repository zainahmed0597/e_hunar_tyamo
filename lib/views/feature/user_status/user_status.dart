import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/colors.dart';
import '../../../utils/string.dart';
import '../device_info/battery_info/two_value_card.dart';
import '../device_info/user_info/one_value_card.dart';

class UserStatus extends StatefulWidget {
  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  // const UserStatus({super.key});
  List<String> status = [
    'AWAY',
    'DO NOT DISTURB',
    'DRIVING',
    'EATING',
    'MEETING',
    'OUTDOORS',
    'SLEEPING',
    'WORKING'
  ];

  // List<String> status2 = ['MEETING', 'OUTDOORS', 'SLEEPING', 'WORKING'];
  String selectStatus = '';

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
            Navigator.of(context).pop();
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [gradient23, gradient24]),
          ),
          child: Column(
            children: [
              const SizedBox(height: 24),
              // Friend's status text widget here
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    friendStatus,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      color: white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Two value Card widget here
              SizedBox(
                height: 33.5.h,
                width: 100.w,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                                child: TwoValueCard(
                              text: userIs,
                              value: online,
                              textClr: gradient26,
                            )),
                            Expanded(
                                child: TwoValueCard(
                              text: lastAppAction,
                              value: lastTimeOnline,
                              textClr: gradient26,
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TwoValueCard(
                          text: userStatus,
                          value: driving,
                          textClr: gradient26,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // battery status curves here
              SizedBox(
                height: 46.5.h,
                width: 100.w,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 18),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Align(
                          alignment: Alignment.center,
                          // My status text widget here
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                myStatus,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  color: gradient27,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                eating,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  color: gradient26,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Scrollable row widget here
                      Expanded(
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            mainAxisExtent: 150,
                            mainAxisSpacing: 8,
                            maxCrossAxisExtent: 160,
                            crossAxisSpacing: 8,
                            childAspectRatio: 2 / 2,
                          ),
                          itemCount: status.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectStatus = status[index];
                                    });
                                  },
                                  child: OneValueCard(
                                    value: status[index],
                                    clr: selectStatus == status[index] ? Colors.blue : gradient28,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
