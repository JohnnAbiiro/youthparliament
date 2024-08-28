import 'package:flutter/material.dart';
class ContainerConstants{
  static const Color appBarColor =Color(0xFFAD1457);
  static const Color pollOptionsContainer = Color(0xff2e388f);
  static const Color signupContainer = Color(0xDBF7F8F9);
  static const Color loginContainer =  Color(0xFFAD1457);
  static const Color buttonBackgroundColor = Color(0xffe8f1fc);
  static const Color transparent1 = Colors.transparent;
  static const Color dropdownColor = Color(0xFFE2ECFF);
  static const Color dropdownColor1 = Color(0xFFF8BBD0);
  static const Color addAccountIconBackgroundColor = Color(0xFFAD1457);
  static const Color waterBillButtonColor = Color(0xFFAD1457);
  static const Color containerBackgroundColor = Color(0xffe4e6f2);
  static const Color bottomNavSelected = Color(0xFFAD1457);
  static  Color greyColor = Colors.grey.withOpacity(0.3);
  static  Color cardColor = Colors.blueAccent;
  static const Color cardColor1 = Color(0xFFFDC733);
  static  Color blackColor = Colors.black;
  static const Color colorGrey = Color(0xFF757575);
  static const Color  focusedBorderColor =Color(0xFFAD1457);






  //gradient containers
  static  Color gradient1= const Color(0xFF21ABB6).withOpacity(0.96);
  static const Gradient gradient2 = LinearGradient(
    colors: [
      Color(0xFF1EB7B5),
      Color(0xFF2A80B3),
      Color(0xFF1EB7B5)
    ],
    stops: [0.0, 0.5, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const Gradient gradient3 =  LinearGradient(
    colors: [
      Color(0xFF171216),
      Color(0xFF211C21),
      Color(0xFF39343B)
    ],
    stops: [0.0, 0.33, 0.66, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const Gradient gradient4 =LinearGradient(
    colors: [
      Color(0xFF171216),
      Color(0xFF211C21),
      Color(0xFF2E292F),
      Color(0xFF39343B)
    ],
    stops: [0.0, 0.33, 0.66, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const Gradient gradient5 =LinearGradient(
    colors: [
      Color(0xFF3275F0),
      Color(0xFF3678F1),
      Color(0xFF4F8BF2),
      Color(0xFF689BF4),
      Color(0xFF82AEF7)
    ],
    stops: [0.0, 0.25, 0.50, 0.75, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  //color filter
  static const ColorFilter colorFilter = ColorFilter.mode(
    Color.fromRGBO(33, 171, 182, 0.9),
    BlendMode.srcATop,
  );
  static  ColorFilter colorFilter1 =ColorFilter.mode(
      Colors.black.withOpacity(0.2),
      BlendMode.dstATop
  );
  // border
static const border = Color(0xFFEDEDED);
static const border1 =  Color(0xFFE3E3E3);
}