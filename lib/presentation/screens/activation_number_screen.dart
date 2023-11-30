import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/presentation/widgets/app_button.dart';
import 'package:clinic_app/presentation/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivationNamberScreen extends StatefulWidget {
  const ActivationNamberScreen({super.key});

  @override
  State<ActivationNamberScreen> createState() => _ActivationNamberScreenState();
}

class _ActivationNamberScreenState extends State<ActivationNamberScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    String phone = '';
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
          const Text(
            'Введите код из смс',
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
              controller: controller,
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
            onPressed: () async {},
            title: 'Далее',
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
