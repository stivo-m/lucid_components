import 'package:flutter/material.dart';
import 'package:lucid_components/src/colors.dart';
import 'package:lucid_components/src/constants.dart';

class LucidTextField extends StatelessWidget {
  const LucidTextField({
    Key? key,
    required this.labelText,
    this.hintText,
    this.onChanged,
    this.suffixIcon,
    this.controller,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.hintTextColor = greyTextColor,
    this.labelTextColor = primaryDarkColor,
    this.errorColor = primaryErrorColor,
  }) : super(key: key);

  final Function(String? value)? onChanged;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final Color? errorColor;
  final String? hintText;
  final Color? hintTextColor;
  final TextInputType? keyboardType;
  final String labelText;
  final Color? labelTextColor;
  final bool? obscureText;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: labelTextColor,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: controller,
          obscureText: obscureText!,
          keyboardType: keyboardType,
          onChanged: onChanged,
          validator: validator,
          style: const TextStyle(
            color: primaryDarkColor,
            height: 1.2,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(
              color: hintTextColor,
            ),
            errorStyle: TextStyle(
              color: errorColor,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kBorderRadious),
              borderSide: const BorderSide(
                color: greyTextColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kBorderRadious),
              borderSide: BorderSide(
                color: errorColor!,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kBorderRadious),
              borderSide: const BorderSide(
                color: primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
