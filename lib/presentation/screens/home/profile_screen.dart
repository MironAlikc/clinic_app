import 'package:clinic_app/core/app_consts.dart';
import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/presentation/widgets/settings_button.dart';
import 'package:clinic_app/presentation/widgets/shared_prefs_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Мой профиль',
            style: AppFonts.w700s34,
          ),
          actions: [
            SettingsButton(
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.lightBlue,
                      child: Text(
                        '${SharedPrefsWidget.prefs.getString(AppConst.name)?[0] ?? ''}${SharedPrefsWidget.prefs.getString(AppConst.sureName)?[0] ?? ''}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: AppColors.buttonColor,
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.camera_alt,
                            color: AppColors.whith,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
