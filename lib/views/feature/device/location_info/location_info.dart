import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/widgets/device_info/one_value_card.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/string.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

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
          decoration: BoxDecoration(gradient: LinearGradient(colors: [gradient18, gradient19])),
          child: Column(
            children: [
              Container(
                height: 46.5.h,
                width: double.infinity,
                color: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    // Battery status text here
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          locationStatus,
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
                    // Location status here
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: double.infinity,
                          height: 130,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.pin_drop,
                                    size: 50,
                                    color: red,
                                  ),
                                ),
                                Flexible(
                                    child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    locationAddressShort,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                      color: gradient30,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // country location here
                    SizedBox(
                      height: 80,
                      width: 200,
                      // color: red,
                      child: Card(
                        color: white,
                        elevation: 4,
                        child: Center(
                          child: Column(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    countryName,
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: gradient30,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                  ],
                ),
              ),
              Container(
                height: 40.5.h,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    // My Battery status text here
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          myLocationStatus,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: gradient27,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    // My Location status here
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:10),
                      child: Card(
                        elevation: 10,
                        color: gradient30,
                        child: Container(
                          width: double.infinity,
                          height: 130,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.pin_drop,
                                    size: 50,
                                    color: white,
                                  ),
                                ),
                                Flexible(
                                    child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    locationAddressShort,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                      color: white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // country location here
                    SizedBox(
                      height: 80,
                      width: 200,
                      // color: red,
                      child: Card(
                        color: gradient30,
                        elevation: 4,
                        child: Center(
                          child: Column(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    countryName,
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
