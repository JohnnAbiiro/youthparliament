import 'package:flutter/material.dart';
import 'constants.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;

    double hb =  (screenHeight / baseScreenHeight);
    double wb =  (screenWidth / baseScreenWidth);

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f9),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 800.0,
            minWidth: 100.0,
          ),
          child: Center(
            child: Container(
              width: 600.0,
              height: 600,
              decoration: const BoxDecoration(
                color:  Color(0xFFDAEEEF),
               ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 const  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(Constants.youthImage),
                    ),
                  ),
                 // const  Text(Constants.loginText,style: TextStyle(fontWeight: FontWeight.bold),),
                 //const  SizedBox(height: 8.0,),
                // const  Text(Constants.mobilenumber),
                  const SizedBox(height: 20.0,),
                  Container(
                    color: Colors.transparent,
                    width: 400,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: Constants.enternumber,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28.0,),
                  Container(
                    color: Colors.transparent,
                    width: 400,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: Constants.enternumber,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                 const SizedBox(height: 38.0,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 400.0,
                      height: 50.0,
                      decoration:  BoxDecoration(
                        color: const Color(0xff2e388f),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Center(child:  Text(Constants.login,style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  const SizedBox(height: 18.0,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 400.0,
                      height: 50.0,
                      decoration:  BoxDecoration(
                        color: const Color(0xff2e388f),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Center(child:  Text(Constants.googleText,style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                 const SizedBox(height: 8.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text:  const TextSpan(
                            children: [
                              TextSpan(
                                text: 'By signing up you agree to our ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Terms of Use',
                                style: TextStyle(color: Color(0xff2f3695), fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(color: Color(0xff2f3695), fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '.',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


