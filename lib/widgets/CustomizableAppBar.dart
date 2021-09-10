import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomizableAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomizableAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        "assets/images/github_transparent_logoicon.png",
        fit: BoxFit.contain,
        height: 72,
      ),
      centerTitle: true,
      toolbarHeight: 88,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
