import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hintText,
    required this.controller,
  });
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      maxLength: 9,
      style: AppFonts.w700s17,
      controller: controller,
      decoration: InputDecoration(
        prefix: const Text(
          '0 ',
          style: AppFonts.w700s17,
        ),
        hintText: hintText,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.fontsColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
