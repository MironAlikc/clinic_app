import 'package:clinic_app/core/app_consts.dart';
import 'package:clinic_app/presentation/screens/home/home_screen.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/presentation/widgets/app_button.dart';
import 'package:clinic_app/presentation/widgets/create_order_screeens_text_field.dart';
import 'package:clinic_app/presentation/widgets/shared_prefs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerSureName = TextEditingController();
  String? errorText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Создание профиля',
          style: AppFonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            CreateOrderScreeensTextField(
              title: 'Имя',
              hintText: 'Введите ваше имя',
              controller: controllerName,
            ),
            SizedBox(height: 32.h),
            CreateOrderScreeensTextField(
              title: 'Фамилия',
              hintText: 'Введите вашу фамилию',
              controller: controllerSureName,
            ),
            const Spacer(),
            AppButton(
              onPressed: () async {
                final SharedPreferences prefs = SharedPrefsWidget.prefs;
                await prefs.setString(AppConst.name, controllerName.text);
                await prefs.setString(
                    AppConst.sureName, controllerSureName.text);
                await prefs.setBool(AppConst.isLogined, true);

                // ignore: use_build_context_synchronously
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
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
