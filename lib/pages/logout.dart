import 'package:ecg/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

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
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width: screenWidth * 0.8,
               color: const Color(0xfff1f2f7),
               child:  Row(
                 children: [
                   IconButton(
                     icon: const Icon(Icons.arrow_back_ios_new),
                     onPressed: () {
                       // Navigate back to the previous screen
                       Navigator.pop(context);
                     },
                   )
                 ],
               ),
             ),
           ),
            SizedBox(height: screenWidth * 0.01,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.1,
                color: const Color(0xfff1f2f7),
                child: const Row(
                  children: [
                    SizedBox(width: 10.0,),
                    Icon(Icons.report,size: 30.0,),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Report faulty meter',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Report any issues relating to your meter',style: TextStyle(fontSize: 12),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenWidth * 0.02,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth * 0.8,
                color: const Color(0xfff1f2f7),
                child:  Row(
                  children: [
                    const SizedBox(width: 10.0,),
                    const Icon(Icons.report,size: 35.0,),
                   const SizedBox(width: 10.0,),
                    Container(
                      width: screenWidth * 0.75,
                      color: Colors.transparent,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 10.0,),
                          Text('Report issue with Postpaid Bill',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('Postpaid bills are generated from meter readings, which may sometimes be wrong',style: TextStyle(fontSize: 12),),
                           SizedBox(height: 10.0,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenWidth * 0.02,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth * 0.8,
                color: const Color(0xfff1f2f7),
                child:  Row(
                  children: [
                    const SizedBox(width: 10.0,),
                    const Icon(Icons.report,size: 35.0,),
                    const SizedBox(width: 10.0,),
                    Container(
                      width: screenWidth * 0.80,
                      color: Colors.transparent,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 10.0,),
                          Text('Report illegal connections',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('Electricity is not free. When bad customers use for free, it makes it more expensive for good customers',style: TextStyle(fontSize: 12),),
                          SizedBox(height: 10.0,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenWidth * 0.02,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth * 0.8,
                color: const Color(0xfff1f2f7),
                child:  Row(
                  children: [
                    const SizedBox(width: 10.0,),
                    const Icon(Icons.report,size: 35.0,),
                    const SizedBox(width: 10.0,),
                    Container(
                      width: screenWidth * 0.780,
                      color: Colors.transparent,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 10.0,),
                          Text('Staff Misconduct',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("We're not perfect. Report any misconduct by staff or contractor to help us improve.",style: TextStyle(fontSize: 12),),
                          SizedBox(height: 10.0,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenWidth * 0.02,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth * 0.85,
                color: const Color(0xfff1f2f7),
                child:  const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10.0,),
                    Center(child: Text('Terms of Use and Privacy Policy',style: TextStyle(fontWeight: FontWeight.bold),)),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Using the ECG Power App means that you agree to our general and specific terms of services.",style: TextStyle(fontSize: 12),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('ECG PowerApp 5.065'),
                    ),
                    SizedBox(height: 10.0,),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenWidth * 0.03,),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Log out',
                  style: const TextStyle(
                    color: Color(0xffc50505),
                    fontSize: 16,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                    },
                ),
              ),
            )
          ],
       ),
    );
  }
}