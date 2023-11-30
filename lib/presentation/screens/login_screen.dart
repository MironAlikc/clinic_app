import 'dart:math';

import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/presentation/widgets/app_button.dart';
import 'package:clinic_app/presentation/widgets/custom_close_button.dart';
import 'package:clinic_app/presentation/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController controler = TextEditingController();
  String phone = '';
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
            const Text(
              'Номер телефона',
              style: AppFonts.w400s15,
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextFeild(
                hintText: '_ _ _ _ _ _ _ _ _ _ ',
                controller: TextEditingController(),
              ),
            ),
            SizedBox(height: 12.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
                style: AppFonts.w400s15,
              ),
            ),
            Text(
              phone,
              style: AppFonts.w400s15,
            ),
            const Spacer(),
            AppButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.setString('phoneNamber', controler.text);
                print(prefs.getString('phoneNamber'));
                //phone = controler.text;
                setState(() {});
                //  int code = Random().nextInt(8999) + 1000;
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text(
                //       code.toString(),
                //     ),
                //   ),
                // );
              },
              title: 'Далее',
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
