import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomCihpWidget extends StatelessWidget {
  const CustomCihpWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onSelected,
  });

  final String title;
  final bool isSelected;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ChoiceChip(
        onSelected: onSelected,
        showCheckmark: false,
        avatarBorder: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColors.black,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        backgroundColor: AppColors.whith,
        selectedColor: AppColors.buttonColor,
        labelStyle: AppFonts.w600s15,
        label: Text(
          title,
          style: AppFonts.w600s15.copyWith(
              color: isSelected ? AppColors.whith : AppColors.fontsColor),
        ),
        selected: isSelected,
      ),
    );
  }
}
