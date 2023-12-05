import 'package:clinic_app/data/models/doctors_model.dart';
import 'package:clinic_app/presentation/screens/home/doctors_info_screen.dart';
import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/presentation/widgets/doctors_info_widget.dart';
import 'package:clinic_app/presentation/widgets/custom_cihp_widget.dart';
import 'package:clinic_app/presentation/widgets/search_text_feild.dart';
import 'package:clinic_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  final TextEditingController controller = TextEditingController();

  int selctedIndex = 0;

  List<String> speciality = [
    'Артимологи',
    'Кардиологи',
    'Кардиохирурги',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Доктора',
                    style: AppFonts.w700s34,
                  ),
                  const Spacer(),
                  SvgPicture.asset(AppSvgs.bell),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SearchTextFeild(
                    controller: controller,
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      controller.clear();
                      setState(() {});
                    },
                    child: const Text(
                      'Очистить',
                      style: AppFonts.w600s14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView.builder(
                  itemCount: speciality.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CustomCihpWidget(
                    onSelected: (val) {
                      selctedIndex = index;
                      setState(() {});
                    },
                    isSelected: selctedIndex == index,
                    title: speciality[index],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.57,
                width: double.infinity,
                color: AppColors.bodyBackGroundColor,
                child: ListView.builder(
                  itemBuilder: (context, index) => DoctorsInfoWidget(
                    model: DoctorsData.doctors[index],
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorsInfoScreen(
                            model: DoctorsData.doctors[index],
                          ),
                        ),
                      );
                    },
                  ),
                  itemCount: DoctorsData.doctors.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
