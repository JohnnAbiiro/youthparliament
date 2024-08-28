import 'package:flutter/material.dart';
import 'containerconstants.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyForm(
        label: 'Select Item',
        isRequired: true,
        selectedValue: 'Option 1',
        dropdownItems: ['Option 1', 'Option 2', 'Option 3'],
      ),
    ),
  );
}

class MyForm extends StatelessWidget {
  const MyForm({
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
    required this.selectedValue,
    required this.dropdownItems,
    this.onChanged,
  });

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
  final String selectedValue;
  final List<String> dropdownItems;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DropdownButtonFormField<String>(
          value: selectedValue,
          items: dropdownItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            labelStyle: const TextStyle(fontSize: 12.0),
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ContainerConstants.focusedBorderColor,
              ),
            ),
          ),
          validator: validator ?? (value) {
            if (isRequired && (value == null || value.isEmpty)) {
              return errorText ?? 'This field is required';
            }
            return null;
          },
          onChanged: onChanged,
        ),
      ),
    );
  }
}
