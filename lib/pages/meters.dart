import 'package:flutter/material.dart';
import 'header.dart';
class Meter extends StatefulWidget {
  const Meter({super.key});

  @override
  State<Meter> createState() => _MeterState();
}
class _MeterState extends State<Meter> {
  bool _showDetails = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;
    double hb = screenHeight / baseScreenHeight;
    double wb = screenWidth / baseScreenWidth;

    return Scaffold(
      body: Column(
        children: [
        //  headerMenu("Meter","Service \n Request", context),
          SingleChildScrollView(
           scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap:(){
                    setState(() {
                      _showDetails = !_showDetails;
                    });
                  },
                  child: Container(
                    width: screenWidth * 0.76,
                    height: screenHeight * 0.28,
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [Color(0xFFB2B6F6),Color(0xFFDBA0E8),Color(0xFFF7A7B0)],
                        stops:[ 0.20, 0.50, 0.75],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
                              child:  Text("Add prepaid meter",style: TextStyle(color: Color(0xFF2D3A8A)),),
                            ),
                            const SizedBox(height: 15.0,),
                            Image.asset("images/metal.png",
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    mini: true,
                                    backgroundColor: const Color(0xFF2D3A8A),
                                    child: const Icon(
                                      Icons.add,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: screenWidth * 0.76,
                    height: screenHeight * 0.28,
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [Color(0xFFB2B6F6),Color(0xFFDBA0E8),Color(0xFFF7A7B0)],
                        stops:[ 0.20, 0.50, 0.75],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
                              child:  Text("Add post paid meter",style: TextStyle(color: Colors.red),),
                            ),
                            const SizedBox(height: 15.0,),
                            Image.asset("images/metal.png",
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: screenHeight *0.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    mini: true,
                                    backgroundColor: const Color(0xFFDB132A),
                                    child: const Icon(
                                      Icons.add,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: screenWidth * 0.76,
                    height: screenHeight * 0.28,
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFF1E4DE),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
                              child:  Text("Add In-Store Third Party\n Vendor Account",style: TextStyle(color: Color(0xFFD07101)),),
                            ),
                            const SizedBox(height: 3.0,),
                            Image.asset("images/metal.png",
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    mini: true,
                                    backgroundColor: const Color(0xFFD07101),
                                    child: const Icon(
                                      Icons.add,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_showDetails)
           const  Column(
              children:  [
                Icon(Icons.add, color: Color(0xFFD07101)),
                SizedBox(width: 8.0),
                Text(
                  " Meter details and See Details",
                  style: TextStyle(color: Color(0xFFD07101)),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
