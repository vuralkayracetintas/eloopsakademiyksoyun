import 'dart:async';
import 'package:flutter/material.dart';
import '../ing3.dart';

class SplashScreening3 extends StatefulWidget {
  const SplashScreening3({Key? key}) : super(key: key);

  @override
  _SplashScreening3State createState() => _SplashScreening3State();
}

class _SplashScreening3State extends State<SplashScreening3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 280), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const ing3MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/images/eloops_logo.png',
              height: 120,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
            ),
            const SizedBox(
              height: 200,
            ),
            const Text(
              "Yıllık Eğitim Maliyetini %70 İndir!",
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.red, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
