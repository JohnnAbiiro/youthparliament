import 'package:flutter/material.dart';
import 'header.dart';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/iconconstants.dart';
import '../constants/imageconstants.dart';
import '../constants/textconstants.dart';
class Wallet extends StatelessWidget {
const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double wb = screenWidth / baseScreenWidth;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerMenu("Wallet","Service \n Request", context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:  BoxDecoration(
                  color: ContainerConstants.gradient1,
                  gradient: ContainerConstants.gradient2,
                  image:   const DecorationImage(
                    image: AssetImage(ConstantsImage.down),
                    fit: BoxFit.cover,
                    colorFilter: ContainerConstants.colorFilter,
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
                       child: Text(Constants.myPowerAppBalance,style: TextStyle(color: Colors.red),),
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
                      color: ContainerConstants.border,
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
                        color: ContainerConstants.border1,
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
