import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final String? errorText;
  final ValueChanged<String>? onChanged;

  const AppTextField({
    super.key,
    required this.labelText,
    this.errorText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
