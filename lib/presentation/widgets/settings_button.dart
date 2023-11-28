import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
    required this.onPressed,
  });

  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.settings_outlined,
        size: 24.h,
        color: AppColors.black.withOpacity(0.75),
      ),
    );
  }
}
