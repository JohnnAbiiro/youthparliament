import 'package:ecg/pages/Signup.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(Constants.youthImage),
                    ),
                    const SizedBox(height: 8.0),
                    _buildTextField(_width,'Names', 'Enter your full name', Icons.person, validator: _requiredValidator),
                    const SizedBox(height: 8.0),
                    _buildTextField(_width,'Regional Location', 'Enter your regional location', Icons.location_on, validator: _requiredValidator),
                    const SizedBox(height: 8.0),
                    _buildTextField(_width,'Academic Background', 'Enter your academic background', Icons.school, validator: _requiredValidator),
                    const SizedBox(height: 8.0),
                    _buildTextField(_width,'Current Profession', 'Enter your current profession', Icons.work, validator: _requiredValidator),
                    const SizedBox(height: 8.0),
                    _buildTextField(_width,'Previous Leadership Experience', 'Enter your previous leadership experience', Icons.history, validator: _requiredValidator),
                    const SizedBox(height: 8.0),
                    _buildTextField(_width,'Phone Number', 'Enter your phone number', Icons.phone, keyboardType: TextInputType.phone, validator: _requiredValidator),
                    const SizedBox(height: 8.0),
                    _buildTextField(_width,'Email', 'Enter your email address', Icons.email, keyboardType: TextInputType.emailAddress, validator: _emailValidator),
                    const SizedBox(height: 8.0),
                    _buildSexDropdown(_width,),
                    const SizedBox(height: 8.0),
                    _buildDateDropdowns(_width,),
                    const SizedBox(height: 8.0),
                    _buildSubmitButton(_width,),
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

   _buildTextField(double width,String label, String hint, IconData icon, {TextInputType? keyboardType, String? Function(String?)? validator}) {
    return Container(
      color: Colors.transparent,
      width: width,
      child: TextFormField(
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
              onChanged: (value) {},
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
              onChanged: (value) {},
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
              onChanged: (value) {},
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
   _buildSubmitButton(double width,) {
    return InkWell(
      onTap: () {
        if (_formKey.currentState!.validate()) {

        }
      },
      child: Container(
        width: width,
        height: 50.0,
        decoration: BoxDecoration(
          color: const Color(0xff2e388f),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: const Center(
          child: Text(
            Constants.createMAccount,
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
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
