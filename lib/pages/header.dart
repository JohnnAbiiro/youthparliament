import 'package:flutter/material.dart';
import 'serviceRequest.dart';
Padding headerMenu(double screenWidth, double screenHeight,String menuText ,String serviceRequestText,BuildContext context) {
  return Padding(
    padding:  EdgeInsets.only(left: screenWidth * 0.04,right:screenWidth * 0.04),
    child: Row(
      children: [
        Container(
          width: screenWidth * 0.15,
          height: screenHeight * 0.07,
          color: Colors.transparent,
          child: Image.asset("images/youth.jpeg"),
        ),
        SizedBox(width: screenWidth * 0.02),
        Text(menuText,style: const TextStyle(fontSize: 12.0),),
        SizedBox(width: screenWidth * 0.10),
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Request()),
            );
          },
          child: Container(
            width: 128.0,
            decoration: BoxDecoration(
              color: const Color(0xffe8f1fc),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.add_card_rounded, color: Colors.green, size: 30.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(serviceRequestText,style: const TextStyle(fontSize: 12.0),),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
