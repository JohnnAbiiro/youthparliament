import 'package:flutter/material.dart';
class Wallet extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.0*wb, vertical: 8.0*wb),
                child: Container(
                  width: screenWidth * 0.1,
                  color: Colors.transparent,
                  child: Image.asset("images/youth.jpeg"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                child: Text("Home"),
              ),
              SizedBox(width: screenWidth * 0.250),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: screenWidth * 0.35,
                  decoration: BoxDecoration(
                    color: const Color(0xffe8f1fc),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child:  Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                         Icon(Icons.add_card_rounded, color: Colors.green, size: 30.0),
                         SizedBox(width: screenWidth * 0.02),
                       const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text("Service"),
                              Text("Request"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              width: 350,
              height: 180,
              decoration: const BoxDecoration(
                image:   DecorationImage(
                  image: AssetImage('images/down.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Container(),
          Padding(
           padding:  EdgeInsets.symmetric(horizontal: 8.0 * wb),
           child: const Text("Wallets",style: TextStyle(fontWeight: FontWeight.bold),),
         ),
          Padding(
           padding:  EdgeInsets.symmetric(horizontal: 8.0 * wb),
           child: const Text("Add your mobile money wallet or bank card (and associated account) to pay",
              style: TextStyle(fontSize: 12.0),),
         )

        ],
      ),
    );
  }
}
