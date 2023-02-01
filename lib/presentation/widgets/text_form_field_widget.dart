import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.keyboardType,
    required this.onChanged,
    required this.validator,
    this.widget,
    this.obscureText = false,
  }) : super(key: key);
  final Function(String)? onChanged;
  final String hintText;
  final String labelText;
  final bool? obscureText;
  final Widget? widget;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      decoration: InputDecoration(
        suffixIcon: widget,
        labelText: labelText,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: AppColors.deepPurpleAccent,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: AppColors.deepPurpleAccent,
            width: 2,
          ),
        ),
      ),
    );
  }
}
