import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menunda perpindahan ke HomePage selama 2 detik
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, "/homePage");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'images/S.png', // Ganti dengan path gambar yang sesuai
          width: 200.0, // Sesuaikan dengan lebar gambar yang diinginkan
          height: 200.0, // Sesuaikan dengan tinggi gambar yang diinginkan
        ),
      ),
    );
  }
}
