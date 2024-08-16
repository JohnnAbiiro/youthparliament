import 'package:ecg/pages/createaccount.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      //backgroundColor: Constants.loginColor,
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
                color:  Color(0xDBF7F8F9),
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
                  const SizedBox(height: 20.0,),
                  Container(
                    color: Colors.transparent,
                    width: 400,
                    child: TextFormField(
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                      decoration: const InputDecoration(
                        labelText: Constants.enternumber,
                        hintText: Constants.enternumber,
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(height: 28.0,),
                  Container(
                    color: Colors.transparent,
                    width: 400,
                    child: TextFormField(
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                      decoration: const InputDecoration(
                        hintText: Constants.password,
                        labelText: Constants.password,
                        suffixIcon: Icon(Icons.visibility_off),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword
                    ),
                  ),
                  const SizedBox(height: 18.0,),
                   InkWell(
                     onTap: (){},
                      child: const Text(
                        Constants.forgotpass,
                        style: TextStyle(fontSize: 12.0,color: Constants.loginTextColor,),)
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
                      child: const Center(child:  Text(Constants.login,style: TextStyle(color:Constants.logintext),)),
                    ),
                  ),
                  const SizedBox(height: 18.0,),
                  Container(
                     width: 400,
                     color: Colors.transparent,
                     child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: const Divider(
                              color: Constants.buttonBackgroundColor,
                              thickness: 1.0,
                            ),
                          ),
                        ),
                       const Text(
                          'or',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 8.0),
                            child: const Divider(
                              color: Constants.buttonBackgroundColor,
                              thickness: 1.0,
                            ),
                          ),
                        ),
                      ],
                     ),
                   ),
                  const SizedBox(height: 18.0,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 400.0,
                      height: 50.0,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Constants.buttonBackgroundColor,
                          width:1.0,
                        ),
                      ),
                      child:Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Container(
                              color: Colors.transparent,
                              child: Image.asset(
                                Constants.googlelogo,
                                height: 24.0,
                                width: 24.0,
                              ),
                            ),
                          ),
                          const SizedBox(width: 80.0,),
                          const Text(Constants.googleText,style: TextStyle(fontSize: 12.0),),
                        ],
                      ),
                    ),
                  ),
                 const SizedBox(height: 10.0,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> const CreateAccount() ),
                      );
                    },
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(Constants.haveaccount, style: TextStyle(fontSize: 12.0,),),
                        Text(Constants.signup,style: TextStyle(fontSize: 12.0,color: Constants.loginTextColor),),
                      ],
                    ),
                  ),
                 const SizedBox(height: 10.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text:  const TextSpan(
                          children: [
                            TextSpan(
                              text: Constants.agreeGoogle,
                              style: TextStyle(fontSize: 12.0),
                            ),
                            TextSpan(
                              text: Constants.terms,
                              style: TextStyle(color: Constants.loginTextColor, fontWeight: FontWeight.bold, fontSize: 12.0),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(color: Constants.loginTextColor, fontWeight: FontWeight.bold,fontSize: 12.0),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                      )
                    ],
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


