import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/youth.jpeg'),
            ),
          ),
          const  Text("Login with your Ghana mobile number",style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 10.0,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 40.0 * hb),
            child: Text("Your mobile number may be verified against your Ghana Card details"),
          ),
          SizedBox(height: 16*hb,),

          Container(
            color: Colors.transparent,
            width: screenWidth * 0.7,
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter your mobile number",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 30.0*hb,),
          InkWell(
            onTap: (){},
            child: Container(
              width: screenWidth * 0.7,
              height: 30.0,
              decoration:  BoxDecoration(
                color: const Color(0xff2e388f),
                borderRadius: BorderRadius.circular(5.0*wb),
              ),
              child: const Center(child:  Text("Login",style: TextStyle(color: Colors.white),)),
            ),
          ),
          SizedBox(height: 10.0*hb,),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 60.0*wb),
            child: RichText(
              text: const TextSpan(
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
                    style: TextStyle(color: Colors.black), // Default color
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
            ),
          )
        ],
      ),
    );
  }
}


