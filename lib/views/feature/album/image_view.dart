import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String url;

  const ImageView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ExtendedImage.network(
      url,
      width: size.width * 0.99,
      height: size.height * 0.99,
      fit: BoxFit.fill,
      cache: true,
      // border: Border.all(color: Colors.red, width: 1.0),
      // borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      shape: BoxShape.rectangle,

      //cancelToken: cancellationToken,
    );
  }
}
