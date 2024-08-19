import 'package:flutter/material.dart';
import 'constants.dart'; // Ensure this file contains the required constants
import 'createaccount.dart'; // Ensure this file contains the CreateAccount widget
import 'membership.dart'; // Ensure this file contains the Leadership widget

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;

    double hb = screenHeight / baseScreenHeight;
    double wb = screenWidth / baseScreenWidth;

    return Scaffold(
      // backgroundColor: Constants.loginColor,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 800.0,
            minWidth: 100.0,
          ),
          child: Container(
            width: 600.0,
            height: 600.0,
            decoration: const BoxDecoration(
              color: Color(0xDBF7F8F9),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(Constants.youthImage),
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  // Email Field
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
                      validator: _emailValidator,
                    ),
                  ),
                  const SizedBox(height: 28.0),
                  // Password Field
                  Container(
                    color: Colors.transparent,
                    width: 400,
                    child: TextFormField(
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                      decoration: InputDecoration(
                        hintText: Constants.password,
                        labelText: Constants.password,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: _togglePasswordVisibility,
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        border:const  OutlineInputBorder(),
                      ),
                      obscureText: _obscureText,
                      keyboardType: TextInputType.visiblePassword,
                      validator: _passwordValidator,
                    ),
                  ),
                  const SizedBox(height: 18.0),

                  // Forgot Password InkWell
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      Constants.forgotpass,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Constants.loginTextColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  // Submit Button
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const Leadership()),
                        );
                      }
                    },
                    child: Container(
                      width: 400.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff2e388f),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          Constants.login,
                          style: TextStyle(color: Constants.logintext),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  // Or Divider
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
                          Constants.or,
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
                  const SizedBox(height: 18.0),

                  // Google Sign-Up Button
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 400.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Constants.buttonBackgroundColor,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
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
                          const SizedBox(width: 80.0),
                          const Text(
                            Constants.googleText,
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  // Sign-Up Prompt
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAccount()),
                      );
                    },
                   child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Constants.haveaccount,
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          Constants.signup,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Constants.loginTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Term andPrivacyPolicy
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: Constants.agreeGoogle,
                              style: TextStyle(fontSize: 12.0),
                            ),
                            TextSpan(
                              text: Constants.terms,
                              style: TextStyle(
                                color: Constants.loginTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: Constants.loginTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
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

  // Validator for email
  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  // Validate password
  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}
