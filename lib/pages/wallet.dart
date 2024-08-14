import 'package:flutter/material.dart';
import 'header.dart';
import 'constants.dart';
class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    //double baseScreenHeight = 812.0;
    double wb = screenWidth / baseScreenWidth;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerMenu(screenWidth, screenHeight,"Wallet","Service \n Request", context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                       child: Text(Constants.myPowerAppBalance,style: TextStyle(color: Colors.white),),
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
                                    text: Constants.gHs,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: Constants.oo,
                                    style: TextStyle(
                                      fontSize: 20,
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
                            image: AssetImage(Constants.greenImage),
                            width: 80.0,
                            height: 50.0,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              Constants.gradientText,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                child: Container(
                  width: screenWidth,
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFEDEDED),
                      width: 2.0,
                    ),
                  ),
                  child: const Center(child:  Text(Constants.withdraw)),
                ),
              ),
            ),
            const SizedBox(height: 8.0,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0 * wb),
              child: const Text(Constants.wallets,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 8.0,),
            Padding(
             padding:  EdgeInsets.symmetric(horizontal: 8.0 * wb),
             child: const Text(Constants.addMobilemoney,
                style: TextStyle(fontSize: 12.0),),
           ),
            const SizedBox(height: 8.0,),
            /* SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 3.0,
                        color: const Color(0xFFE3E3E3),
                      ),
                      color: Constants.paysmallcolor,
                      image: const DecorationImage(
                        image: AssetImage("images/search.png"),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                              child: Text(
                                "My PowerApp Balance",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF303B6B),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 28.0),
                              child: Text(
                                "GHs 0.00",
                                style: TextStyle(
                                  color: Color(0xFF303B6B),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.07),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                alignment: Alignment.bottomLeft,
                                child: const Image(
                                  image: AssetImage('images/youth.jpeg'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Constants.powerBalanceColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            Constants.PaySmallSmall,  // Using constant
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Constants.paysmallcolor,  // Using constant
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                       const Padding(
                         padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            Constants.paymentMethod,
                            style: TextStyle(
                              color: Constants.paysmallcolor,
                              fontSize: 8.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                       const SizedBox(height:8.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: const Image(
                              image: AssetImage(Constants.albrim),
                              fit: BoxFit.contain,
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
           ),*/
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 3.0,
                        color: const Color(0xFFE3E3E3),
                      ),
                      color: Constants.paysmallcolor,
                      image: const DecorationImage(
                        image: AssetImage(Constants.search),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                              child: Text(
                                Constants.myPowerAppBalance,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF303B6B),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 28.0),
                              child: Text(
                                Constants.oo,
                                style: TextStyle(
                                  color: Constants.cediColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.07),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                alignment: Alignment.bottomLeft,
                                child: const Image(
                                  image: AssetImage(Constants.youthImage),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 300.0,
                    decoration: const BoxDecoration(
                      color: Constants.powerBalanceColor,
                    ),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            Constants.PaySmallSmall,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Constants.paysmallcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Center(
                            child: Text(
                              Constants.paymentMethod,
                              style: TextStyle(
                                color: Constants.paysmallcolor,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            height: 100.0,
                            alignment: Alignment.bottomLeft,
                            child: const Image(
                              image: AssetImage(Constants.albrim),  // Using constant
                              fit: BoxFit.contain,
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
      ),
    );
  }
}
