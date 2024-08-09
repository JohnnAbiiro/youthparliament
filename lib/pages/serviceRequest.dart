import 'package:flutter/material.dart';
class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;

    double hb =  (screenHeight / baseScreenHeight);
    double wb =  (screenWidth / baseScreenWidth);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: const Color(0xff030c43),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(height: 5.0,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0,),
                    child:  Text(
                      'JOHN AKANPALE ABIIRO',
                      style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5.0),
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
                  const SizedBox(height: 5.0),
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
                  const SizedBox(height: 10.0),
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
                          SizedBox(height: screenHeight *0.015,),
                          const Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 18.0,),
                              child: Text("Request Request")
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text('Request and view new connection Requests',style: TextStyle(fontSize: 12.0),),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width: 30.0,
                                        height: 25.0,
                                        color: Colors.amber,
                                        child: const Icon(Icons.add_chart_sharp),
                                      ),
                                    ),
                                    const SizedBox(width: 5.0,),
                                    const Column(
                                      children: [
                                        Text("New Request Connection"),
                                        Text("Request and/or view progress",style: TextStyle(fontSize: 12.0),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5.0,),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                                  child: Text("Report and issue",style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Text("Send us reports to help improve your experience",style: TextStyle(fontSize: 12.0),),
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
                                height: 60.0,
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
                                        height: 25.0,
                                        color: Colors.amber,
                                        child: const Icon(Icons.add_chart_sharp),
                                      ),
                                    ),
                                    const SizedBox(width: 5.0,),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Change of account details",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text("change the details associated  with your \n bill or Request",style: TextStyle(fontSize: 12.0),),
                                      ],
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
                                    SizedBox(width: 5.0 * wb,),
                                    const Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Report faulty Request",style: TextStyle(fontWeight: FontWeight.bold),),
                                              Text("Report any issues relating to your Request",style: TextStyle(fontSize: 12.0),),
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