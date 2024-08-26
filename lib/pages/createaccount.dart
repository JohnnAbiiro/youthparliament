import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecg/pages/Signup.dart';
import 'package:ecg/provider/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import '../provider/userModel.dart';
import 'constants.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final sname=TextEditingController();
  final fname=TextEditingController();
  final regionlocation=TextEditingController();
  final academemic=TextEditingController();
  final profession=TextEditingController();
  final previous=TextEditingController();
  final phone=TextEditingController();
  final location=TextEditingController();
  final cprofesssion=TextEditingController();
  final email=TextEditingController();
  String monthval="";
  String yearval="";
  String dayval="";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedSex;

  @override
   build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;
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
                      color: Color(0xDBF7F8F9),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Center(
                            child: Image.asset(Constants.ylplogos,height: 40,),
                            // child: CircleAvatar(
                            //   radius: 100,
                            //   backgroundImage: AssetImage(Constants.ylplogos,),
                            // ),
                          ),
                          const SizedBox(height: 8.0),
                          _buildTextField(sname,_width,'Names', 'Enter your full name', Icons.person, validator: _requiredValidator),
                          const SizedBox(height: 8.0),
                          _buildTextField(location,_width,'Regional Location', 'Enter your regional location', Icons.location_on, validator: _requiredValidator),
                          const SizedBox(height: 8.0),
                          _buildTextField(academemic,_width,'Academic Background', 'Enter your academic background', Icons.school, validator: _requiredValidator),
                          const SizedBox(height: 8.0),
                          _buildTextField(cprofesssion,_width,'Current Profession', 'Enter your current profession', Icons.work, validator: _requiredValidator),
                          const SizedBox(height: 8.0),
                          _buildTextField(previous,_width,'Previous Leadership Experience', 'Enter your previous leadership experience', Icons.history, validator: _requiredValidator),
                          const SizedBox(height: 8.0),
                          _buildTextField(phone,_width,'Phone Number', 'Enter your phone number', Icons.phone, keyboardType: TextInputType.phone, validator: _requiredValidator),
                          const SizedBox(height: 8.0),
                          _buildTextField(email,_width,'Email', 'Enter your email address', Icons.email, keyboardType: TextInputType.emailAddress, validator: _emailValidator),
                          const SizedBox(height: 8.0),
                          _buildSexDropdown(_width,),
                          const SizedBox(height: 8.0),
                          _buildDateDropdowns(_width,),
                          const SizedBox(height: 8.0),
                          InkWell(
                            onTap: ()async{
                              if (_formKey.currentState!.validate()) {
           
           
                                String txt_sname=sname.text.trim();
                                String txt_fname=fname.text.trim();
                                String txt_phone=phone.text.trim();
                                String txt_email=email.text.trim();
                                String txt_previous=previous.text.trim();
                                String txt_academic=academemic.text.trim();
                                String txt_cprofesssion=cprofesssion.text.trim();
                                String txt_location=location.text.trim();
                                String txt_sex=selectedSex!;
                                String dob="${yearval}-${monthval}-${dayval}";
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

   _buildTextField(final controller,double width,String label, String hint, IconData icon, {TextInputType? keyboardType, String? Function(String?)? validator}) {
    return Container(
      color: Colors.transparent,
      width: width,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(fontSize: 12.0),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 12.0),
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 12.0),
          border: const OutlineInputBorder(),
          prefixIcon: Icon(icon),
        ),
        validator: validator,
      ),
    );
  }
   _buildSexDropdown(double width,) {
    return Container(
      color: Colors.transparent,
      width: width,
      child: DropdownButtonFormField<String>(
        value: selectedSex,
        items: ['Male', 'Female', 'Other'].map((String sex) {
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
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select your sex';
          }
          return null;
        },
      ),
    );
  }
   _buildDateDropdowns(double width,) {
    return Container(
      color: Colors.transparent,
      width: width,
      child: Row(
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
              ),
              validator: _requiredValidator,
            ),
          ),
        ],
      ),
    );
  }
   Widget _buildSubmitButton(double width) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        color: Constants.appBarColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: const Center(
        child: Text(
          Constants.createMAccount,
          style: TextStyle(color: Colors.white, fontSize: 12.0),
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
