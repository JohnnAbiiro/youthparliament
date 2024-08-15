import 'package:flutter/material.dart';
class Updatedetails extends StatelessWidget {
  const Updatedetails({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;
    double wb =  (screenWidth / baseScreenWidth);
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 800.0,
          minWidth: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    // color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text("Go Back"),
                ],
              ),
            ),
            const SizedBox(height: 5.0,),
            const Text( "Request a Service", style: TextStyle(fontWeight: FontWeight.bold),),
            const  Text("Select from the list of services the one you want to request"),

            const SizedBox(height: 20.0),
            Container(
              width: screenWidth,
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight *0.015,),
                  Text("New Service Connection"),
                  Text('Requesting a new meter connection ensures your property has the necessary power supply.',
                    style: TextStyle(fontSize: 12.0),),
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
          ],
        ),
      ),
    );
  }
}