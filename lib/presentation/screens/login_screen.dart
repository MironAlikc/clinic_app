import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/presentation/widgets/custom_close_button.dart';
import 'package:clinic_app/presentation/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomCloseButton(
          onPressed: () {},
        ),
        title: const Text(
          'Вход',
          style: AppFonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Войти',
              style: AppFonts.w700s34,
            ),
            SizedBox(height: 49.h),
            Padding(
              padding: const EdgeInsets.all(11),
              child: Column(
                children: [
                  const Text(
                    'Номер телефона',
                    style: AppFonts.w400s15,
                  ),
                  SizedBox(height: 12.h),
                  CustomTextFeild(
                    hintText: '_ _ _ _ _ _ _ _ _ _ ',
                    controller: TextEditingController(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
