import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/widgets/device_info/two_value_card.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/string.dart';

class DeviceSpecs extends StatelessWidget {
  const DeviceSpecs({super.key});

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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [gradient15, gradient16],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              // Battery Status here
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    deviceInfoLong,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // 8 Specs widgets here
              Container(
                width: double.infinity,
                height: 81.h,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: TwoValueCard(
                              text: totalRamText,
                              value: totalRam,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TwoValueCard(
                              text: refreshRate,
                              value: hZ,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TwoValueCard(
                              text: fingerSensor,
                              value: present,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TwoValueCard(
                              text: fingerSensor,
                              value: yes,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TwoValueCard(
                              text: internalMemoryText,
                              value: internalMemory,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TwoValueCard(
                              text: externalMemory,
                              value: nAText,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TwoValueCard(
                              text: screenSizeText,
                              value: screenSize,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TwoValueCard(
                              text: resolutionText,
                              value: resolution,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
