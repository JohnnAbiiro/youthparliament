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
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseScreenWidth = 375.0;
    double baseScreenHeight = 812.0;
     return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 800.0,
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              color: Color(0xDBF7F8F9),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(Constants.youthImage),
                  ),
                  const SizedBox(height: 8.0),
                  _buildTextField('Names', 'Enter your full name', Icons.person, validator: _requiredValidator),
                  const SizedBox(height: 8.0),
                  _buildTextField('Regional Location', 'Enter your regional location', Icons.location_on, validator: _requiredValidator),
                  const SizedBox(height: 8.0),
                  _buildTextField('Academic Background', 'Enter your academic background', Icons.school, validator: _requiredValidator),
                  const SizedBox(height: 8.0),
                  _buildTextField('Current Profession', 'Enter your current profession', Icons.work, validator: _requiredValidator),
                  const SizedBox(height: 8.0),
                  _buildTextField('Previous Leadership Experience', 'Enter your previous leadership experience', Icons.history, validator: _requiredValidator),
                  const SizedBox(height: 8.0),
                  _buildTextField('Phone Number', 'Enter your phone number', Icons.phone, keyboardType: TextInputType.phone, validator: _requiredValidator),
                  const SizedBox(height: 8.0),
                  _buildTextField('Email', 'Enter your email address', Icons.email, keyboardType: TextInputType.emailAddress, validator: _emailValidator),
                  const SizedBox(height: 8.0),
                  _buildSexDropdown(),
                  const SizedBox(height: 8.0),
                  _buildDateDropdowns(),
                  const SizedBox(height: 8.0),
                  _buildSubmitButton(),
                  const SizedBox(height: 8.0),
                  _buildOrDivider(),
                  const SizedBox(height: 8.0),
                  _buildGoogleSignInButton(),
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
    );
  }

   _buildTextField(String label, String hint, IconData icon, {TextInputType? keyboardType, String? Function(String?)? validator}) {
    return Container(
      color: Colors.transparent,
      width: 400,
      child: TextFormField(
        style: const TextStyle(fontSize: 12.0),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: const OutlineInputBorder(),
          prefixIcon: Icon(icon),
        ),
        validator: validator,
      ),
    );
  }
  Widget _buildSexDropdown() {
    return Container(
      color: Colors.transparent,
      width: 400,
      child: DropdownButtonFormField<String>(
        value: selectedSex,
        items: ['Male', 'Female', 'Other'].map((String sex) {
          return DropdownMenuItem<String>(
            value: sex,
            child: Text(sex),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            selectedSex = value;
          });
        },
        decoration: const InputDecoration(
          labelText: 'Sex',
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
  Widget _buildDateDropdowns() {
    return Container(
      color: Colors.transparent,
      width: 400,
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonFormField<String>(
              items: List.generate(31, (index) => (index + 1).toString()).map((day) => DropdownMenuItem<String>(
                value: day,
                child: Text(day),
              )).toList(),
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Day',
                border: OutlineInputBorder(),
              ),
              validator: _requiredValidator,
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: DropdownButtonFormField<String>(
              items: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
                  .map((month) => DropdownMenuItem<String>(
                value: month,
                child: Text(month),
              )).toList(),
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Month',
                border: OutlineInputBorder(),
              ),
              validator: _requiredValidator,
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: DropdownButtonFormField<String>(
              items: List.generate(101, (index) => (1923 + index).toString()).map((year) => DropdownMenuItem<String>(
                value: year,
                child: Text(year),
              )).toList(),
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Year',
                border: OutlineInputBorder(),
              ),
              validator: _requiredValidator,
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildSubmitButton() {
    return InkWell(
      onTap: () {
        if (_formKey.currentState!.validate()) {

        }
      },
      child: Container(
        width: 400.0,
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

  Widget _buildOrDivider() {
    return Container(
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

  Widget _buildGoogleSignInButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 400.0,
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
                style: TextStyle(fontSize: 12.0),
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
                style: TextStyle(fontSize: 12.0),
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
