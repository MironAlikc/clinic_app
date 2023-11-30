import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/presentation/widgets/app_button.dart';
import 'package:clinic_app/presentation/widgets/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivationNamberScreen extends StatefulWidget {
  const ActivationNamberScreen({
    super.key,
    required this.code,
  });
  final int code;
  @override
  State<ActivationNamberScreen> createState() => _ActivationNamberScreenState();
}

class _ActivationNamberScreenState extends State<ActivationNamberScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
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
            child: CodeTextField(controller: controller),
          ),
          SizedBox(height: 24.h),
          TextButton(
            onPressed: () {},
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
            onPressed: () {},
            title: 'Далее',
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
