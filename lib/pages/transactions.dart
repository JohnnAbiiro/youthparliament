import 'package:ecg/pages/Constants.dart';
import 'package:flutter/material.dart';
import 'header.dart';
import 'constants.dart';
class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  bool _isExpanded = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;
  bool _isExpanded5 = false;
  bool _isExpanded6 = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;
    double hb =  (screenHeight / baseScreenHeight);
    double wb =  (screenWidth / baseScreenWidth);
    return Scaffold(
        body:  Column(
          children: [
            headerMenu(screenWidth, screenHeight,"Transactions","Service \n Request", context),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: Row(
                     children: [
                       GestureDetector(
                         onTap: () {
                           setState(() {
                             _isExpanded = !_isExpanded; // Toggle the visibility of the second row
                           });
                         },
                         child: Container(
                           color: _isExpanded ? const Color(0xfff1f2f7) : Colors.transparent,
                           padding: const EdgeInsets.all(8.0),
                           child: const Text('All time'),
                         ),
                       ),
                       SizedBox(width: screenWidth *0.06,),
                       GestureDetector(
                         onTap: () {
                           setState(() {
                             _isExpanded2 = !_isExpanded2;
                           });
                         },
                         child: Container(
                           color: _isExpanded2 ? const Color(0xfff1f2f7) : Colors.transparent,
                           padding: const EdgeInsets.all(8.0),
                           child: const Text('Today'),
                         ),
                       ),
                       SizedBox(width: screenWidth *0.06,),
                       GestureDetector(
                         onTap: () {
                           setState(() {
                             _isExpanded3 = !_isExpanded3;
                           });
                         },
                         child: Container(
                           color: _isExpanded3 ? const Color(0xfff1f2f7) : Colors.transparent,
                           padding: const EdgeInsets.all(8.0),
                           child: const Text('Yesterday'),
                         ),
                       ),
                       SizedBox(width: screenWidth *0.06,),
                       GestureDetector(
                         onTap: () {
                           setState(() {
                             _isExpanded4 = !_isExpanded4;
                           });
                         },
                         child: Container(
                           color: _isExpanded4 ? const Color(0xfff1f2f7) : Colors.transparent,
                           padding: const EdgeInsets.all(8.0),
                           child: const Text('This week'),
                         ),
                       ),
                       SizedBox(width: screenWidth *0.06,),
                       GestureDetector(
                         onTap: () {
                           setState(() {
                             _isExpanded5 = !_isExpanded5;
                           });
                         },
                         child: Container(
                           color: _isExpanded5 ? const Color(0xfff1f2f7) : Colors.transparent,
                           padding: const EdgeInsets.all(8.0),
                           child: const Text('Last month'),
                         ),
                       ),
                       SizedBox(width: screenWidth *0.06,),
                       GestureDetector(
                         onTap: () {
                           setState(() {
                             _isExpanded6 = !_isExpanded6;
                           });
                         },
                         child: Container(
                           color: _isExpanded6 ? const Color(0xfff1f2f7) : Colors.transparent,
                           padding: const EdgeInsets.all(8.0),
                           child: const Text('Last month'),
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
            ),
            if (_isExpanded)
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                width: screenWidth,
                color: const Color(0xfff1f2f7),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text('All time'),
                    const SizedBox(height: 8.0),
                    Image.asset(
                      'images/mete.png',
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Additional Information',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            if(_isExpanded2)
              Text('hello 2'),
            if(_isExpanded3)
              Text('hello 3'),
            if(_isExpanded4)
              Text('hello 4'),
            if(_isExpanded5)
              Text('hello 5'),
            if(_isExpanded6)
              Text('hello 6'),
          ],
        ),
      );
    }
}