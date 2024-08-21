import 'package:flutter/material.dart';
import 'serviceRequest.dart';
import 'constants.dart';
Row headerMenu(String menuText,String serviceRequestText, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
       Container(
        width: 60.0,
        height: 40.0,
        color: Constants.transparent1,
        child: Image.asset(Constants.youthImage),
      ),
       Text(menuText, style: Constants.textStyle),
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
