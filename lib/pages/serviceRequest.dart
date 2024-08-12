import 'package:flutter/material.dart';
import 'updatedetails.dart';
class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;

    double hb =  (screenHeight / baseScreenHeight);
    double wb =  (screenWidth / baseScreenWidth);
    return Scaffold(
      body: Container(
        color: const Color(0xff030c43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0,),
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,),
              child:  Text(
                'JOHN AKANPALE ABIIRO',
                style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 12),
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
                        style: TextStyle(color: Colors.white,fontSize: 12),
                      ),
                      Text("Gha*******04-9",style: TextStyle(color: Colors.white,fontSize: 12),),
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.white,fontSize: 12),
                      ),
                      Text(
                        '233240134604',
                        style: TextStyle(color: Colors.white,fontSize: 12),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Updatedetails()),
                  );
                },
                child: const Text(
                  'Update Details',
                  style: TextStyle(color: Colors.yellow,fontSize: 12),
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
                child:   SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight *0.025,),
                      const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 18.0,),
                          child: Text("Request Request",style: TextStyle(fontSize: 12.0),)
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Request and view new connection Requests',style: TextStyle(fontSize: 12.0),),
                      ),
                      SizedBox(height: screenHeight *0.03,),
                      const Divider(height: 1.0,thickness: 1, indent: 1,endIndent: 1,color: Colors.black12,),
                      SizedBox(height: screenHeight *0.03,),
                      InkWell(
                        onTap: (){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.zero,
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ),
                                content:  Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   const Text(
                                      'New Service Connection',
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12), ),
                                   const Text('Request service connection',
                                     style: TextStyle(fontSize: 12),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                                      child: Container(
                                        width: 40.0,
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF2E388F),
                                        ),
                                        child: const Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                                Icons.add_box_rounded,
                                                color:Colors.white,
                                            ),
                                            Column(
                                              children: [
                                              Text("Request New Service",style: TextStyle(color: Colors.white,fontSize: 12),),
                                            //  Text("Request for a new meter connection for your property",
                                             //   style: TextStyle(fontSize: 10,color: Colors.white),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
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
                              child: Text("Report and issue",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text("Send us reports to help improve your experience",
                              style: TextStyle(fontSize: 12.0),),
                            ),
                          ]
                      ),
                      SizedBox(height: screenHeight *0.03,),
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
                              child:Text("View Reported Issues",
                              style: TextStyle(color: Color(0xff3b3e78),fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight *0.03,),
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
                                    Text("Change of account details",
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    Text("change the details associated  with your \n bill or Request",
                                      style: TextStyle(fontSize: 12.0),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight *0.03,),
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
                                          Text("Report faulty Request",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                          Text("Report any issues relating to your Request",style: TextStyle(fontSize: 10.0),),
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
            ),
          ],
        ),
      ),
    );
  }
}