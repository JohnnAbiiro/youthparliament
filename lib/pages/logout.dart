import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;

    double hb =  (screenHeight / baseScreenHeight);
    double wb =  (screenWidth / baseScreenWidth);
    return Scaffold(
      body: ListView(
          children: [
           Container(
             width: screenWidth * 0.8,
             height: screenHeight * 0.1,
             color: const Color(0xfff1f2f7),
             child: const Row(
               children: [
                 Icon(Icons.arrow_back_ios_new),
               ],
             ),
           ),
            SizedBox(height: screenWidth * 0.05,),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.1,
              color: const Color(0xfff1f2f7),
              child: const Row(
                children: [
                  Icon(Icons.arrow_back_ios_new),
                ],
              ),
            ),
            SizedBox(height: screenWidth * 0.05,),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.1,
              color: const Color(0xfff1f2f7),
              child: const Row(
                children: [
                  Icon(Icons.arrow_back_ios_new),
                ],
              ),
            ),
            SizedBox(height: screenWidth * 0.05,),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.1,
              color: const Color(0xfff1f2f7),
              child: const Row(
                children: [
                  Icon(Icons.arrow_back_ios_new),
                ],
              ),
            ),
            SizedBox(height: screenWidth * 0.05,),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.1,
              color: const Color(0xfff1f2f7),
              child: const Row(
                children: [
                  Icon(Icons.arrow_back_ios_new),
                ],
              ),
            ),
            SizedBox(height: screenWidth * 0.05,),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.1,
              color: const Color(0xfff1f2f7),
              child: const Row(
                children: [
                  Icon(Icons.arrow_back_ios_new),
                ],
              ),
            ),
          ],
       ),
    );
  }
}