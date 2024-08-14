import 'package:flutter/material.dart';
import 'serviceRequest.dart';
import 'constants.dart';
Row headerMenu(double screenWidth, double screenHeight,String menuText,String serviceRequestText, BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: screenWidth * 0.15,
        height: screenHeight * 0.07,
        color: Constants.transparent1,
        child: Image.asset(Constants.youthImage),
      ),
      SizedBox(width: screenWidth * 0.01),
       Text(menuText, style: Constants.textStyle),
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
          child:  Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(Icons.add_card_rounded, color: Constants.iconColor, size: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(serviceRequestText, style: Constants.textStyle),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
