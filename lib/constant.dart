import 'package:flutter/material.dart';

String getAsset(String imageName) => 'assets/images/$imageName.png';

String getLottie(String name) => 'assets/images/$name.json';

const Color kMainColor = Colors.deepPurpleAccent;
const Color kAccentColor = Color(0xFFFFFFFF);
const Color kBackgroundColor = Color(0xFFE5E5E5);
const Color kInactiveColor = Color(0xFFD3D3D3);
const Color kGreyColor = Color(0xFFD9D9D9);
const Color kBorderColor = Color(0xFFA8A89D);
const Color kDarkColor = Color(0xFF767676);
const Color kBlackColor = Color(0xFF000000);

extension NumberExtensions on num {
  EdgeInsets get vPadding => EdgeInsets.symmetric(vertical: toDouble());

  EdgeInsets get hPadding => EdgeInsets.symmetric(horizontal: toDouble());

  EdgeInsets get allPadding => EdgeInsets.all(toDouble());

  SizedBox get hSpace => SizedBox(height: toDouble());

  SizedBox get wSpace => SizedBox(width: toDouble());

  BorderRadius get radius => BorderRadius.all(Radius.circular(toDouble()));

  Radius get circular => Radius.circular(toDouble());
}


extension WidgetExtensions on Widget {
  Padding vPadding(double v) =>
      Padding(padding: EdgeInsets.symmetric(vertical: v), child: this);

  Padding hPadding(double v) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: v), child: this);

  Padding allPadding(double v) =>
      Padding(padding: EdgeInsets.all(v), child: this);

  Center get center => Center(child: this);
}
