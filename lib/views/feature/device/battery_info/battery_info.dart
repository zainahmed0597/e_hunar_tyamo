import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tyamo/utils/colors.dart';

import '../../../../utils/string.dart';
import '../../../../widgets/device_info/battery_info_two_value_card.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

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
            gradient: LinearGradient(colors: [gradient11, gradient12]),
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
                    batteryStatus,
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
                height: 37.h,
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
                              text: status,
                              value: discharge,
                            ),
                          ),
                          Expanded(
                            child: BatteryInfoTwoValueCard(
                              text: chargingType,
                              value: simpleDash,
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
                            child: BatteryInfoTwoValueCard(
                              text: chargingPer,
                              value: nAText,
                              subWidget: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  SleekCircularSlider(
                                    min: 0,
                                    max: 100,
                                    initialValue: 38,
                                    appearance: CircularSliderAppearance(
                                      size: 90,
                                      customColors: CustomSliderColors(
                                        progressBarColor: gradient25,
                                      ),
                                      infoProperties: InfoProperties(
                                        mainLabelStyle: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      customWidths: CustomSliderWidths(
                                        progressBarWidth: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: BatteryInfoTwoValueCard(
                              text: temperature,
                              value: number35,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Column 3 here
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: BatteryInfoTwoValueCard(
                              text: batteryHealth,
                              value: good,
                            ),
                          ),
                          Expanded(
                            child: BatteryInfoTwoValueCard(
                              text: batteryTech,
                              value: batteryType,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 47.h,
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
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          myBatteryStatus,
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
                      height: 35.h,
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
                                    text: status,
                                    value: discharge,
                                    clr: gradient25,
                                    textClr: white,
                                  ),
                                ),
                                Expanded(
                                  child: BatteryInfoTwoValueCard(
                                    text: chargingType,
                                    value: simpleDash,
                                    clr: gradient25,
                                    textClr: white,
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
                                  child: BatteryInfoTwoValueCard(
                                    text: chargingPer,
                                    value: nAText,
                                    clr: gradient25,
                                    textClr: white,
                                    subWidget: Column(
                                      children: [
                                        const SizedBox(height: 10),
                                        SleekCircularSlider(
                                          min: 0,
                                          max: 100,
                                          initialValue: 83,
                                          appearance: CircularSliderAppearance(
                                            size: 90,
                                            customColors: CustomSliderColors(
                                              progressBarColor: gradient11,
                                            ),
                                            infoProperties: InfoProperties(
                                              mainLabelStyle: GoogleFonts.nunito(
                                                  fontWeight: FontWeight.w400, color: white),
                                            ),
                                            customWidths: CustomSliderWidths(
                                              progressBarWidth: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: BatteryInfoTwoValueCard(
                                    text: temperature,
                                    value: number35,
                                    clr: gradient25,
                                    textClr: white,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Column 3 here
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: BatteryInfoTwoValueCard(
                                    text: batteryHealth,
                                    value: good,
                                    clr: gradient25,
                                    textClr: white,
                                  ),
                                ),
                                Expanded(
                                  child: BatteryInfoTwoValueCard(
                                    text: batteryTech,
                                    value: batteryType,
                                    clr: gradient25,
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
