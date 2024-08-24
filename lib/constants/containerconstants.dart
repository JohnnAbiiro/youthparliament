import 'package:flutter/material.dart';
class ContainerConstants{
  static const Color appBarColor =Color(0xff0a318e);
  static const Color pollOptionsContainer = Color(0xff2e388f);
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

  //color filter
  static const ColorFilter colorFilter = ColorFilter.mode(
    Color.fromRGBO(33, 171, 182, 0.9),
    BlendMode.srcATop,
  );

  // border
static const border = Color(0xFFEDEDED);
static const border1 =  Color(0xFFE3E3E3);
}