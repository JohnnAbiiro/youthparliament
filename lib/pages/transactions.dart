import 'package:flutter/material.dart';
class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double sized = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;

    double hb =  (screenHeight / baseScreenHeight);
    double wb =  (screenWidth / baseScreenWidth);
    return Scaffold(
        body:  Column(
          children: [
            Container(
              color: Colors.transparent,
              child: Row(
                children: [
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                    child: Container(
                        width: sized * 0.1,
                        color: Colors.transparent,
                        child: Image.asset("images/youth.jpeg")),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    child: Text("Home"),
                  ),
                  SizedBox(width: sized * 0.17),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: sized * 0.35,
                        decoration:  BoxDecoration(
                            color: const Color(0xffe8f1fc),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child:   Wrap(
                          spacing: 10.0,
                          direction: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(Icons.add_card_rounded, color: Colors.green, size: 30.0),
                            ),
                            Column(
                              children: [
                              const  Text("Service"),
                              const  Text("Request"),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
               children: [
                  Container(
                   width: 50.0,
                    height: 50,
                    color: Color(0xfff1f2f7),
                    child: Text('All time'),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                   width: 50.0,
                   height: 50,
                   color: Color(0xfff1f2f7),
                   child: Text('Today'),
                 ),
                 SizedBox(width: 10.0,),
                 Container(
                   width: 50.0,
                   height: 50,
                   color: Color(0xfff1f2f7),
                   child: Text('Yesterday'),
                 ),
                 SizedBox(width: 10.0,),
                 Container(
                   width: 50.0,
                   height: 50,
                   color: Color(0xfff1f2f7),
                   child: Text('This week'),
                 ),
                 SizedBox(width: 10.0,),
                 Container(
                   width: 50.0,
                   height: 50,
                   color: Color(0xfff1f2f7),
                   child: Text('Last week'),
                 ),
                ],
              ),
            ),
          ],
        ),
     );
   }
}