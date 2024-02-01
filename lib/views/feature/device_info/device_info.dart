import 'package:flutter/material.dart';
import 'package:tyamo/widgets/global_widgets/top_banner.dart';
import '../../../utils/colors.dart';
import '../../../utils/string.dart';
import 'gradient_button.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

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
      body: Column(
        children: [
          // Top Banner here
          TopBanner(
            title: deviceInfo,
            clr: [gradient1, gradient2],
          ),
          const SizedBox(height: 15),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // color: red,
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: GradientButton(
                            title: userStatus,
                            clr: [gradient9, gradient10],
                            overlayColor: Colors.cyan,
                            isGradientVertical: true,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: GradientButton(
                            title: battery,
                            clr: [gradient11, gradient12],
                            overlayColor: cyan,
                            isGradientVertical: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: GradientButton(
                        title: general,
                        clr: [gradient13, gradient14],
                        overlayColor: Colors.teal.shade300,
                        isGradientVertical: true,
                      )),
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // color: red,
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: GradientButton(
                        title: deviceSpecs,
                        clr: [gradient15, gradient16],
                        overlayColor: cyan,
                        isGradientVertical: true,
                      )),
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: GradientButton(
                            title: location,
                            clr: [gradient18, gradient19],
                            overlayColor: gradient17,
                            isGradientVertical: false,
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: GradientButton(
                            title: orientation,
                            clr: [gradient21, gradient22],
                            overlayColor: gradient20,
                            isGradientVertical: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
