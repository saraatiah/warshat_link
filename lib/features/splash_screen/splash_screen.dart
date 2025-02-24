
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()async
  {
    Future.delayed(const Duration(seconds: 10), ()async {
      final prefs = await SharedPreferences.getInstance();
      if ( prefs.getBool('onboarding_complete')??false) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          ),
        );
      }
      else
      {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) =>  const OnboardingScreen(),
            ));
      }
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
