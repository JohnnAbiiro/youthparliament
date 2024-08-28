import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecg/pages/Signup.dart';
import 'package:ecg/provider/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import '../provider/userModel.dart';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/textconstants.dart';
import '../constants/iconconstants.dart';
import '../constants/textformbuilder.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final sname=TextEditingController();
  final fname=TextEditingController();
  final academic_background=TextEditingController();
  final cprofesssion=TextEditingController();
  final previous_leadership=TextEditingController();
  final phone=TextEditingController();
  final email=TextEditingController();
  String monthval="";
  String yearval="";
  String dayval="";
  final password =TextEditingController();
  String? passwordVal;
  final confirmPasswordVal =TextEditingController();
  String? selectedRegion ;
  String? selectedSex;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
   build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double wp800 =screenWidth/screenWidth;
    double wp400 =screenWidth/screenWidth;
    double _width =screenWidth * wp400;
     return ProgressHUD(
       child: Builder(
         builder: (context) {
           return Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: screenWidth * wp800,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: ContainerConstants.signupContainer,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Center(
                            child: Image.asset(Constants.ylplogos,height: 40,),
                          ),
                          // Surname Name Field
                          MyTextBuilder(
                            label: 'Surname',
                            isRequired: true,
                            hint: 'Enter your surname',
                            icon: Icons.person,
                            controller: sname,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                           ),
                          const SizedBox(height: 8.0),
                          //first name
                          MyTextBuilder(
                            label: 'First name',
                            isRequired: true,
                            hint: 'Enter your first name',
                            icon: Icons.person,
                            controller: fname,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your first name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8.0),
                          //select religion
                          DropdownButtonFormField<String>(
                            value: selectedRegion,
                            items: ['Greater Accra','Ashanti','Western','Western North', 'Central','Eastern',  'Volta','Oti', 'Northern',
                              'Upper East','Savannah','Upper West', 'Bono','Bono East','Ahafo','North East', ].map((String regionlocation) {
                              return DropdownMenuItem<String>(
                                value: regionlocation,
                                child: Text(regionlocation,style: const TextStyle(fontSize: 12.0),),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                selectedRegion = value;
                              });
                            },
                            decoration: const InputDecoration(
                              labelText: 'Region',
                              labelStyle: TextStyle(fontSize: 12.0),
                              border: OutlineInputBorder(),
                              focusedBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:ContainerConstants.focusedBorderColor,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please select your region';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8.0),
                          // academic background
                           MyTextBuilder(
                            label: 'academic_background',
                            isRequired: true,
                            hint: 'Enter Academic Background',
                            icon: Icons.school,
                            controller: academic_background,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your academic Background';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8.0),
                         //current profession
                          MyTextBuilder(
                            label: 'Current Profession',
                            isRequired: true,
                            hint: 'Enter current profession',
                            icon: Icons.work,
                            controller: cprofesssion,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Current Profession is required';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8.0),
                          //previous leadership
                          MyTextBuilder(
                            label: 'Previous Leadership',
                            isRequired: true,
                            hint: 'Enter Previous Leadership Experience',
                            icon: Icons.history,
                            controller: previous_leadership,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'previous leadership experience is required';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8.0),
                          //phone
                          MyTextBuilder(
                            label: 'Phone',
                            isRequired: true,
                            hint: 'Enter Phone number',
                            icon: Icons.phone,
                            controller: phone,
                            keyboardType: TextInputType.phone,
                            validator: _phoneValidator,
                          ),
                          const SizedBox(height: 8.0),
                          //Email
                          MyTextBuilder(
                            label: 'Email',
                            isRequired: true,
                            hint: 'Enter Email',
                            icon: Icons.email,
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            validator: _emailValidator,
                          ),
                          //gender
                          const SizedBox(height: 8.0),
                          DropdownButtonFormField<String>(
                            value: selectedSex,
                            items: ['Male', 'Female',].map((String sex) {
                              return DropdownMenuItem<String>(
                                value: sex,
                                child: Text(sex,style: const TextStyle(fontSize: 12.0),),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                selectedSex = value;
                              });
                            },
                            decoration: const InputDecoration(
                              labelText: 'Sex',
                              labelStyle: TextStyle(fontSize: 12.0),
                              border: OutlineInputBorder(),
                              focusedBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:ContainerConstants.focusedBorderColor,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please select your sex';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8.0),
                          // dob
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                child: DropdownButtonFormField<String>(
                                  items: List.generate(31, (index) => (index + 1).toString()).map((day) => DropdownMenuItem<String>(
                                    value: day,
                                    child: Text(day,style: const TextStyle(fontSize: 12.0),),
                                  )).toList(),
                                  onChanged: (value) {
                                    dayval=value!;
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Day',
                                    labelStyle: TextStyle(fontSize: 12.0),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: _requiredValidator,
                                ),
                              ),
                              const SizedBox(width: 3.0),
                              Flexible(
                                flex: 3,
                                child: DropdownButtonFormField<String>(
                                  items: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
                                      .map((month) => DropdownMenuItem<String>(
                                    value: month,
                                    child: Text(month,style: const TextStyle(fontSize: 12.0),),
                                  )).toList(),
                                  onChanged: (value) {
                                    monthval=value!;
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Month',
                                    labelStyle: TextStyle(fontSize: 12.0),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: _requiredValidator,
                                ),
                              ),
                              const SizedBox(width: 3.0),
                              Flexible(
                                flex: 2,
                                child: DropdownButtonFormField<String>(
                                  items: List.generate(81, (index) => (1943 + index).toString()).map((year) => DropdownMenuItem<String>(
                                    value: year,
                                    child: Text(year,style: const TextStyle(fontSize: 12.0),),
                                  )).toList(),
                                  onChanged: (value) {
                                    yearval=value!;
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Year',
                                    labelStyle: TextStyle(fontSize: 12.0),
                                    border: OutlineInputBorder(),
                                    focusedBorder:  OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:ContainerConstants.focusedBorderColor,
                                      ),
                                    ),
                                  ),
                                  validator: _requiredValidator,
                                ),
                              ),
                            ],
                          ),
                          const  SizedBox(height: 8.0),
                          //password
                          MyTextBuilder(
                            label: 'Password',
                            isRequired: true,
                            hint: 'Enter Password',
                            icon: Icons.lock,
                            controller: password,
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            validator:(value) {
                            if (value == null || value.isEmpty) {
                             return 'Please enter your password';
                             } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                            }
                             passwordVal = value;
                            return null;
                            },
                          ),
                          const  SizedBox(height: 8.0),
                           //confirm password
                          MyTextBuilder(
                            label: 'Confirm Password',
                            isRequired: true,
                            hint: 'Enter confirm password',
                            icon: Icons.lock,
                            controller: confirmPasswordVal,
                            obscureText: true,
                            keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                } else if (value != passwordVal) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                           ),
                           const SizedBox(height: 8.0,),
                           //submit
                          InkWell(
                              onTap: ()async{
                                if (_formKey.currentState!.validate()) {
                                  String txt_sname=sname.text.trim();
                                  String txt_fname=fname.text.trim();
                                  String txt_phone=phone.text.trim();
                                  String txt_email=email.text.trim();
                                  String txt_previous=previous_leadership.text.trim();
                                  String txt_academic=academic_background.text.trim();
                                  String txt_cprofesssion=cprofesssion.text.trim();
                                  String txt_location= selectedRegion!;
                                  String txt_sex=selectedSex!;
                                  String dob="${yearval}-${monthval}-${dayval}";
                                  String txt_password =confirmPasswordVal.text.trim();

                                  final user = UserModel(
                                    dob: dob,
                                    sex: txt_sex,
                                    fname: txt_fname,
                                    sname: txt_sname,
                                    email: txt_email,
                                    phone: txt_phone,
                                    cprofesssion: txt_cprofesssion,
                                    previous_leadership: txt_previous,
                                    academic_background: txt_academic,
                                    regional_location: txt_location,
                                  );

                                  try{
                                    final progress=ProgressHUD.of(context);
                                    progress!.show();
                                    //  await AppProvider.auth.createUserWithEmailAndPassword(email: txt_email, password: "password");
                                    await FirebaseFirestore.instance.collection('users').doc(txt_email).set(user.toMap());//add(user.toMap());
                                    progress!.dismiss();
                                  }catch(e){
                                    print(e);
                                  }
                                }
                              },
                              child: _buildSubmitButton(_width,)
                           ),
                          const SizedBox(height: 8.0),
                          _buildOrDivider(_width,),
                          const SizedBox(height: 8.0),
                          _buildGoogleSignInButton(_width,),
                          const SizedBox(height: 8.0),
                          _buildSignUpPrompt(context),
                          const SizedBox(height: 8.0),
                          _buildTermsAndPrivacyPolicy(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
               );
         }
       ),
     );
  }

           _buildSubmitButton(double width) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        color: ContainerConstants.appBarColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: const Center(
        child: Text(
          Constants.createMAccount,
          style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0),
        ),
      ),
    );
  }

          _buildOrDivider(double width) {
          return Container(
          width: width,
          color: Colors.transparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  child: const Divider(
                    color: Colors.grey,
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
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                ),
              ),
            ],
          ),
          );
          }
          _buildGoogleSignInButton(double width) {
          return InkWell(
          onTap: () {},
          child: Container(
            width: width,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.grey,
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
                  Constants.signUpGoogle,
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ),
          );
          }
          _buildSignUpPrompt(context) {
          return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Signup(),
              ),
            );
          },
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Constants.alreadyAccount,
                style: TextStyle(fontSize: 12.0),
              ),
              Text(
                Constants.signIn,
                style: TextStyle(
                    fontSize: 12.0, color: Constants.loginTextColor),
              ),
            ],
          ),
          );
          }
          _buildTermsAndPrivacyPolicy() {
          return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: Constants.agreeGoogle,
                    style: TextStyle(fontSize: 12.0, color: Colors.black),
                  ),
                  TextSpan(
                    text: Constants.term,
                    style: TextStyle(
                        color: Constants.loginTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                  TextSpan(
                    text: Constants.and,
                    style: TextStyle(fontSize: 12.0,color: Colors.black),
                  ),
                  TextSpan(
                    text: Constants.privacyPolicy,
                    style: TextStyle(
                        color: Constants.loginTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                  TextSpan(
                    text: '.',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            )
          ],
          );
          }
             String? _requiredValidator(String? value) {
              if (value == null || value.isEmpty) {
                return Constants.requiredText;
              }
              return null;
             }
             String? _emailValidator(String? value) {
              if (value == null || value.isEmpty) {
                return Constants.requiredText;
              }
              final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
              if (!regex.hasMatch(value)) {
                return Constants.requiredText;
              }
              return null;
             }
             }
            String? _phoneValidator(String? value) {
            if (value == null || value.isEmpty) {
              return Constants.requiredText;
            }
            final regex = RegExp(r'^\+?[0-9]{7,15}$');
            if (!regex.hasMatch(value)) {
              return 'Please enter a valid phone number';
            }
            return null;
            }
