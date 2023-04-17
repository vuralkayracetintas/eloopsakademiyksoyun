import 'dart:async';
import 'package:flutter/material.dart';
import '../ing1.dart';

class SplashScreenin1 extends StatefulWidget {
  const SplashScreenin1({Key? key}) : super(key: key);

  @override
  _SplashScreenin1State createState() => _SplashScreenin1State();
}

class _SplashScreenin1State extends State<SplashScreenin1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 280), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const ing1MyHomePage()));
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
