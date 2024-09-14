import 'package:app_robo_2024/BluetoothApp.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
      Duration(seconds: 5), // Thay đổi thời gian chờ nếu cần
      () {},
    );

    Navigator.pushReplacement(  
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft, // Loại hiệu ứng chuyển tiếp
        child: BluetoothApp(),
        duration: Duration(milliseconds: 500), // Thay đổi thời gian hiệu ứng
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset('assets/animations/splash_animation.json',
            width: 200), // Đường dẫn đến file Lottie
      ),
    );
  }
}
