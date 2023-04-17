import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/biyoloji/b6SST/views/homepage.dart';

class SplashScreen5 extends StatefulWidget {
  const SplashScreen5({Key? key}) : super(key: key);

  @override
  _SplashScreen5State createState() => _SplashScreen5State();
}

class _SplashScreen5State extends State<SplashScreen5> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 280), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const Bt6TFHomePage()));
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
