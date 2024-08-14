import 'package:flutter/material.dart';
import 'serviceRequest.dart';
class Constants {
  // Text Constants
  static const String menuText = "Your Menu Text Here";
  static const String serviceRequestText = "Service Request";

  // Image Constants
  static const String youthImage = "images/youth.jpeg";

  // Color Constants
  static const Color transparent = Colors.transparent;
  static const Color buttonBackgroundColor = Color(0xffe8f1fc);
  static const Color iconColor = Colors.green;

  // Style Constants
  static const TextStyle textStyle = TextStyle(fontSize: 12.0);
}
Padding headerMenu(double screenWidth, double screenHeight, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: screenWidth * 0.04, right: screenWidth * 0.04),
    child: Row(
      children: [
        Container(
          width: screenWidth * 0.15,
          height: screenHeight * 0.07,
          color: Constants.transparent,
          child: Image.asset(Constants.youthImage),
        ),
        SizedBox(width: screenWidth * 0.02),
        const Text(Constants.menuText, style: Constants.textStyle),
        SizedBox(width: screenWidth * 0.10),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Request()),
            );
          },
          child: Container(
            width: 128.0,
            decoration: BoxDecoration(
              color: Constants.buttonBackgroundColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Row(
              children: [
                 Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.add_card_rounded, color: Constants.iconColor, size: 30.0),
                ),
                Padding(
                  padding:  EdgeInsets.all(5.0),
                  child: Text(Constants.serviceRequestText, style: Constants.textStyle),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
