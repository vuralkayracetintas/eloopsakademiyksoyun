import 'package:flutter/material.dart';
import 'package:yksoyun_23_06_2022/main.dart';

class MainSplash extends StatefulWidget {
  const MainSplash({super.key});

  @override
  State<MainSplash> createState() => _MainSplashState();
}

class _MainSplashState extends State<MainSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/eloops_logo.png',
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
              ),
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
            // const Text(
            //   "Yıllık Eğitim Maliyetini %70 İndir!",
            //   style: TextStyle(
            //       fontWeight: FontWeight.w500, color: Colors.red, fontSize: 16),
            // ),
          ],
        ),
      ),
    );
  }
}
