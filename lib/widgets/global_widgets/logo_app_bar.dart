import 'package:flutter/material.dart';

import '../../utils/string.dart';

class LogoAppBar extends StatelessWidget  {
  const LogoAppBar({
    super.key,
  });
  //
  // @override
  // // TODO: implement preferredSize
  // Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 92,
        child: Image.asset(
          logoImg,
          fit: BoxFit.fitWidth,
          filterQuality: FilterQuality.high,
        ),
    );
  }
}
