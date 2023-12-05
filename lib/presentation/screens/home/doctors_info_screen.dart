import 'package:clinic_app/data/models/doctors_model.dart';
import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:star_rating/star_rating.dart';

class DoctorsInfoScreen extends StatefulWidget {
  const DoctorsInfoScreen({
    super.key,
    required this.model,
  });
  final DoctorsModel model;

  @override
  State<DoctorsInfoScreen> createState() => _DoctorsInfoScreenState();
}

class _DoctorsInfoScreenState extends State<DoctorsInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.model.name,
          style: AppFonts.w600s17,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.model.image),
              radius: 50,
            ),
            Text(
              widget.model.name,
              style: AppFonts.w500s22,
            ),
            const SizedBox(height: 8),
            Text(
              widget.model.specialty,
              style: AppFonts.w400s17.copyWith(
                color: AppColors.fontsColor,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StarRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  color: const Color(0xffFC9E4F),
                  length: 5,
                  rating: widget.model.raitng,
                  between: 25,
                  starSize: 24,
                  onRaitingTap: (val) {
                    widget.model.raitng = val;
                    setState(() {});
                  },
                ),
                const SizedBox(width: 8),
                Text(
                  widget.model.raitng.toString(),
                  style: const TextStyle(
                    color: Color(0xFFAFAFAF),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                  ),
                )
              ],
            ),
            SizedBox(
              //height: MediaQuery.of(context).size.height * 0.4,
              height: 400.h,
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      indicatorWeight: 3,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: AppColors.buttonColor,
                      unselectedLabelStyle: AppFonts.w500s15,
                      labelStyle: AppFonts.w500s15,
                      tabs: <Widget>[
                        Tab(
                          text: 'Анализы',
                          icon: SvgPicture.asset(AppSvgs.analys),
                        ),
                        Tab(
                          text: 'Дифгнозы',
                          icon: SvgPicture.asset(AppSvgs.diagnos),
                        ),
                        Tab(
                          text: 'Рекомендации',
                          icon: SvgPicture.asset(AppSvgs.recomends),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: ListView.builder(
                                shrinkWrap: true,
                                //  physics: const NeverScrollableScrollPhysics(),
                                itemCount: widget.model.feedback.length,
                                itemBuilder: (context, index) => ListTile(
                                      leading: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: NetworkImage(
                                          widget.model.feedback[index].image,
                                        ),
                                      ),
                                      subtitle: Text(
                                        widget.model.feedback[index].text,
                                      ),
                                      title: Text(
                                        widget.model.feedback[index].name,
                                        style: AppFonts.w600s18.copyWith(
                                          color: AppColors.fontsColor,
                                        ),
                                      ),
                                    )

                                //  Row(
                                //   children: [
                                //     const CircleAvatar(
                                //       // backgroundImage: NetworkImage(
                                //       //   widget.model.feedback[intex].image,
                                //       // ),
                                //       backgroundColor: Colors.red,
                                //       radius: 20,
                                //     ),
                                //     Column(
                                //       children: [
                                //         Text(
                                //           widget.model.feedback[intex].name,
                                //           style: AppFonts.w600s18.copyWith(
                                //             color: AppColors.black,
                                //           ),
                                //         ),
                                //       ],
                                //     )
                                //   ],
                                // ),
                                ),
                          ),
                          const Center(
                            child: Text("It's rainy here"),
                          ),
                          const Center(
                            child: Text("It's sunny here"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
