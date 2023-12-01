import 'package:clinic_app/core/app_consts.dart';
import 'package:clinic_app/presentation/screens/auth/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    routing();
    super.initState();
  }
  void routing() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLogined = prefs.getBool(AppConst.isLogined) ?? false;
    await Future.delayed(
      const Duration(seconds: 4),
    );
    if (isLogined) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomScreen(),
        ),
      );
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomScreen(),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
