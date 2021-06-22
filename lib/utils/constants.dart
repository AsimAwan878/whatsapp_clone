import 'package:flutter/material.dart';

sizeHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  return height;
}

sizeWidth(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return width;
}

Color secondaryTextColor = Colors.grey;
Color primaryColor = Color(0xff27316c);
Color onlineColor = Colors.green;
Color transparentColor = Colors.transparent;
Color defaultColor = Colors.white;

List<String> svgAssets = <String>[
  "assets/icons/svg_icons/Video Call.svg", //Video Call 0
  "assets/icons/svg_icons/Audio Call.svg", // Audio call 1
  "assets/icons/svg_icons/Camera.svg", //Camera 2
  "assets/icons/svg_icons/Voice.svg", //Voice 3
  "assets/icons/svg_icons/Speaker.svg", //Speaker 4
];
