import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/utils/colors.dart';

import '../../../../utils/string.dart';
import '../../../../widgets/feature/device_info/battery_info_two_value_card.dart';
import '../../../../widgets/feature/device_info/general_info_four_value_card.dart';


class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
      // Body here
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [gradient13, gradient14]),
          ),
          child: Column(
            children: [
              const SizedBox(height: 26),
              // Battery status text here
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    generalStatus,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6),

              // Top 6 widget here
              Container(
                height: 33.5.h,
                width: double.infinity,
                color: Colors.transparent,
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    // Column 1 here
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: BatteryInfoTwoValueCard(
                              text: statusScreen,
                              value: unlocked,
                              textClr: gradient29,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: GeneralInfoFourValueCard(
                              text: systemVolume,
                              value: number07,
                              textSec: mediaVolume,
                              valueSec: number47,
                              textClr: gradient29,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Column 2 here
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: GeneralInfoFourValueCard(
                              text: lightActivity,
                              value: dimLight,
                              textSec: lightIntensity,
                              valueSec: number4,
                              textClr: gradient29,
                            ),
                          ),
                          Expanded(
                            child: BatteryInfoTwoValueCard(
                              text: brightness,
                              value: brightnessPercentage,
                              textClr: gradient29,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Last updated status
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    lastUpdate,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                      color: white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    lastUpdateTime,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        color: white,
                        fontSize: 16,
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 10),

              Container(
                height: 45.h,
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    // My Battery status text here
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          myGeneralStatus,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: gradient27,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),

                    Container(
                      height: 33.5.h,
                      width: double.infinity,
                      color: Colors.transparent,
                      // padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          // Column 1 here
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: BatteryInfoTwoValueCard(
                                    text: statusScreen,
                                    value: on,
                                    clr: gradient29,
                                    textClr: white,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: GeneralInfoFourValueCard(
                                    text: systemVolume,
                                    value: number515,
                                    textSec: mediaVolume,
                                    valueSec: number715,
                                    textClr: white,
                                    clr: gradient29,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Column 2 here
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: GeneralInfoFourValueCard(
                                    text: lightActivity,
                                    value: noLight,
                                    textSec: lightIntensity,
                                    valueSec: number0,
                                    textClr: white,
                                    clr: gradient29,
                                  ),
                                ),
                                Expanded(
                                  child: BatteryInfoTwoValueCard(
                                    text: brightness,
                                    value: myBrightnessPercentage,
                                    clr: gradient29,
                                    textClr: white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
