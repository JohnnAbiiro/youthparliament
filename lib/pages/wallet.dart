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
              height: 200,
              decoration:  BoxDecoration(
                color: const Color(0xFF21ABB6).withOpacity(0.96),
                gradient: const LinearGradient(
                  colors: [Color(0xFF1EB7B5), Color(0xFF2A80B3), Color(0xFF1EB7B5)],
                  stops: [0.0, 0.5, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                image:   DecorationImage(
                  image: AssetImage('images/down.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color(0xFF21ABB6).withOpacity(0.9),
                    BlendMode.srcATop,
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Stack(
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0,),
                     Padding(
                     padding: EdgeInsets.symmetric(horizontal: 30.0,),
                     child: Text("My PowerApp Balance",style: TextStyle(color: Colors.white),),
                      ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0, ),
                        child:  Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "GHs ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: "0.00",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 60.0,),
                        Image(
                          image: AssetImage("images/metal.png"),
                          width: 80.0,
                          height: 50.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "This is not the balance for any of your meters. This account is "
                              "for your refunds ONLY. You may use your refunds to buy credit or "
                              "withdraw to your mobile money or bank account.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                ],
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
