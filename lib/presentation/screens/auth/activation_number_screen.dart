import 'dart:math';
import 'package:clinic_app/presentation/screens/auth/create_profile_screen.dart';
import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/presentation/widgets/app_button.dart';
import 'package:clinic_app/presentation/widgets/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ActivationNamberScreen extends StatefulWidget {
  ActivationNamberScreen({
    super.key,
    required this.code,
  });
  int? code;
  @override
  State<ActivationNamberScreen> createState() => _ActivationNamberScreenState();
}

class _ActivationNamberScreenState extends State<ActivationNamberScreen> {
  final TextEditingController controller = TextEditingController();
  String? errorText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.buttonColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Подтверждение номера',
          style: AppFonts.w600s17,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.h),
          const Text(
            'Введите код из смс',
            style: AppFonts.w500s22,
          ),
          SizedBox(height: 147.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: CodeTextField(
              controller: controller,
              errorText: errorText,
              onChanged: (val) {
                if (val == widget.code.toString()) {
                  errorText = null;
                  setState(() {});
                } else {
                  errorText = 'Код не верный';
                  setState(() {});
                }
                setState(() {});
              },
            ),
          ),
          SizedBox(height: 24.h),
          TextButton(
            onPressed: () {
              widget.code = Random().nextInt(8999) + 1000;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    widget.code.toString(),
                  ),
                ),
              );
            },
            child: Text(
              'Получить код повторно',
              style: AppFonts.w400s15.copyWith(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const Spacer(),
          AppButton(
            onPressed: controller.text.length < 4
                ? null
                : () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateProfileScreen(),
                      ),
                    );
                  },
            title: 'Далее',
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
