import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/mat/m9/views/homepage.dart';


class SplashScreen29 extends StatefulWidget {
  const SplashScreen29({Key? key}) : super(key: key);

  @override
  _SplashScreen29State createState() => _SplashScreen29State();
}

class _SplashScreen29State extends State<SplashScreen29> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 280), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const m9HomePage()));
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
            const SizedBox(height: 200,),
            const Text(
              "Yıllık Eğitim Maliyetini %70 İndir!",
              style: TextStyle(fontWeight: FontWeight.w500,color: Colors.red,fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}



