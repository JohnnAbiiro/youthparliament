import 'package:flutter/material.dart';
class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;

    double hb =  (screenHeight / baseScreenHeight);
    double wb =  (screenWidth / baseScreenWidth);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
       ),
      body: Stack(

        children: [
          Positioned.fill(
            child: Container(
              color: const Color(0xff030c43),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25.0,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0,),
                    child:  Text(
                      'JOHN AKANPALE ABIIRO',
                      style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.0),
                    child:  Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ghana Card Number',
                              style: TextStyle(color: Colors.white,),
                            ),
                            Text("Gha*******04-9",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          children: [
                            Text(
                              'Phone Number',
                              style: TextStyle(color: Colors.white,),
                            ),
                             Text(
                               '233240134604',
                               style: TextStyle(color: Colors.white,),
                             ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: GestureDetector(
                      onTap: () {
                      },
                      child: const Text(
                        'Update Details',
                        style: TextStyle(color: Colors.yellow,),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  Expanded(
                    child: Container(
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        boxShadow:  [BoxShadow(color: Colors.black26, blurRadius: 4.0)],
                      ),
                      child:   Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: screenHeight *0.017,),
                         const Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 18.0,),
                            child: Text("Service Request")
                          ),
                         const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text('Request and view new connection services',style: TextStyle(fontSize: 12.0),),
                          ),
                          SizedBox(height: screenHeight *0.01,),
                         const Divider(height: 1.0,thickness: 1, indent: 1,endIndent: 1,color: Colors.black12,),
                          SizedBox(height: screenHeight *0.01,),
                         InkWell(
                           onTap: (){},
                           child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                               width: screenWidth * 1.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                    ),
                                  ],
                                  border: Border.all(
                                    color: Colors.white70,
                                    width: 1.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Container(
                                        width: 30.0,
                                        height: 30.0,
                                        color: Colors.amber,
                                        child: const Icon(Icons.add_chart_sharp),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0,),
                                 const Expanded(
                                      child:
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                      Text("New service Connection"),
                                      Text("Request and/or view progress",style: TextStyle(fontSize: 12.0),),
                                    ],
                                    ),
                                      )
                                  ),
                                  ],
                                ),
                              ),
                            ),
                         ),
                         const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(height: 10.0,),
                               Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 20.0),
                                 child: Text("Report and issue"),
                               ),
                               Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 20.0),
                                 child: Text("Send us reports to help improve your experience"),
                               ),
                             ]
                           ),
                         SizedBox(height: screenHeight *0.01,),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: InkWell(
                             onTap: (){},
                             child: Container(
                               width: screenWidth * 1.0,
                               height: 50.0,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                 border: Border.all(
                                   color: const Color(0xff8c90bb),
                                   width: 1.0,
                                 ),
                               ),
                               child:
                               const Center(
                                 child:Text("View Reported Issues",style: TextStyle(color: Color(0xff3b3e78)),
                                 ),
                               ),
                             ),
                           ),
                         ),
                          SizedBox(height: screenHeight *0.01,),
                          InkWell(
                            onTap: (){},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: screenWidth * 1.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                    ),
                                  ],
                                  border: Border.all(
                                    color: Colors.white70,
                                    width: 1.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Container(
                                        width: 30.0,
                                        height: 30.0,
                                        color: Colors.amber,
                                        child: const Icon(Icons.add_chart_sharp),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0,),
                                    const Expanded(
                                        child:
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Change of account details"),
                                              Text("change the details associated with your bill or meter",style: TextStyle(fontSize: 12.0),),
                                            ],
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight *0.01,),
                          InkWell(
                            onTap: (){},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: screenWidth * 1.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                    ),
                                  ],
                                  border: Border.all(
                                    color: Colors.white70,
                                    width: 1.0,
                                  ),
                                 ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Container(
                                        width: 30.0,
                                        height: 30.0,
                                        color: Colors.amber,
                                        child: const Icon(Icons.add_chart_sharp),
                                      ),
                                    ),
                                     SizedBox(width: 8.0 * wb,),
                                     const Expanded(
                                         child:
                                         Padding(
                                           padding: EdgeInsets.all(8.0),
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Text("Report faulty meter"),
                                               Text("Report any issues relating to your meter",style: TextStyle(fontSize: 12.0),),
                                             ],
                                           ),
                                         )
                                     ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}