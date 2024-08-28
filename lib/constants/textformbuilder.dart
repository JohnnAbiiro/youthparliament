import 'package:flutter/material.dart';
import 'containerconstants.dart'; // Import the container constants file

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyTextBuilder(
          label: "Label",
          isRequired: true,
        ),
      ),
    ),
  );
}

class MyTextBuilder extends StatelessWidget {
  final String label;
  final bool isRequired;
  final String? hint;
  final String? initialValue;
  final String? helperText;
  final String? errorText;
  final TextInputType? keyboardType;
  final IconData? icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;

  const MyTextBuilder({
    super.key,
    required this.label,
    required this.isRequired,
    this.hint,
    this.initialValue,
    this.helperText,
    this.errorText,
    this.keyboardType,
    this.icon,
    this.controller,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(fontSize: 12.0),
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 12.0),
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 12.0),
          border: const OutlineInputBorder(),
          helperText: helperText,
          errorText: errorText,
          prefixIcon: icon != null ? Icon(icon) : null,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ContainerConstants.focusedBorderColor,
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
