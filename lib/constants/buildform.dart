import 'package:flutter/material.dart';
class MyForm extends StatefulWidget {
  final String label;
  final String type; // Field type: 'text', 'dropdown', 'checkbox', 'radio', 'number', etc.
  final bool isRequired; // Whether the field is required
  final List<String>? options; // For dropdown, multi-choice fields, or radio buttons
  final String? hint; // Hint text for text fields
  final String? initialValue; // Initial value for fields
  final String? helperText; // Helper text for fields
  final String? errorText; // Custom error text
  final TextInputType? keyboardType; // Keyboard type for text and number fields
  final IconData? icon; // Icon for text fields
  final double? width; // Width of the field
  final TextEditingController? controller; // Custom controller for text fields
  final String? Function(String?)? validator; // Custom validator function
  final bool obscureText;
  final void Function(String)? onChanged;
  const MyForm({
    Key? key,
    required this.label,
    required this.type,
    required this.isRequired,
    this.options,
    this.hint,
    this.initialValue,
    this.helperText,
    this.errorText,
    this.keyboardType,
    this.icon,
    this.width,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.onChanged,
  }) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String? _selectedValue;
  bool _checkboxValue = false;
  String? _selectedRadioValue;
  TextEditingController _textEditingController = TextEditingController();

        return Container(
          width: widget.width ?? double.infinity,
          child: TextFormField(
            controller: widget.controller ?? _textEditingController,
            style: const TextStyle(fontSize: 12.0),
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
              labelText: widget.label,
              labelStyle: const TextStyle(fontSize: 12.0),
              hintText: widget.hint,
              hintStyle: const TextStyle(fontSize: 12.0),
              border: const OutlineInputBorder(),
              prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFAD1457),
                ),
              ),
            ),
            validator: fieldValidator,
          ),
        );

