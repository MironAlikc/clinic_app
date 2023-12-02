import 'package:clinic_app/presentation/screens/home/doctors_screen.dart';
import 'package:clinic_app/presentation/screens/home/profile_screen.dart';
import 'package:clinic_app/presentation/theme/app_colors.dart';
import 'package:clinic_app/presentation/theme/app_fonts.dart';
import 'package:clinic_app/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );
  List<Widget> screens = [
    const DoctorsScreen(),
    const Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Text('Статьи'),
    ),
    const Scaffold(
      backgroundColor: Colors.red,
      body: Text('Вызов'),
    ),
    const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Text('Мои доктора'),
    ),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: screens,
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style16,
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: const Icon(CupertinoIcons.add),
        title: ("Доктора"),
        activeColorPrimary: AppColors.buttonColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: const Icon(CupertinoIcons.square_favorites),
        title: ("Статьи"),
        activeColorPrimary: AppColors.buttonColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Image.asset(AppPngs.car_2),
        ),
        title: (" "),
        activeColorPrimary: AppColors.buttonColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: const Icon(CupertinoIcons.flag),
        title: ("Мои доктора"),
        activeColorPrimary: AppColors.buttonColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: const Icon(CupertinoIcons.profile_circled),
        title: ("Профиль"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
