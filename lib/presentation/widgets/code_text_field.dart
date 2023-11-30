import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: AppFonts.w600s18.copyWith(
        color: AppColors.black,
      ),
      obscureText: true,
      textAlign: TextAlign.center,
      maxLength: 4,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        counterText: '',
        suffixIcon: CircleAvatar(
          radius: 17.5.r,
          backgroundColor: AppColors.iconBackGroundColor,
          child: IconButton(
            icon: const Icon(
              Icons.close,
              color: AppColors.black,
            ),
            onPressed: () {
              controller.clear();
            },
          ),
        ),
        prefix: Text(
          'Код',
          style: AppFonts.w600s18.copyWith(
            color: AppColors.black,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.textFieldColor,
          ),
        ),
      ),
    );
  }
}
