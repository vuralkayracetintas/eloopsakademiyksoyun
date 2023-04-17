import 'package:flutter/material.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/biyoloji/b3tf/views/play_quiz.dart';
import 'package:yksoyun_23_06_2022/customText.dart';

class Bt3TFHomePage extends StatefulWidget {
  const Bt3TFHomePage({Key? key}) : super(key: key);

  @override
  _Bt3TFHomePageState createState() => _Bt3TFHomePageState();
}

class _Bt3TFHomePageState extends State<Bt3TFHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.deepPurple),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "E-LooPsAkademi YKS OYUN",
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Center(child: CustomText()),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                "Biyoloji III",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(ekranGenisligi * 0.5, 40),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Bt3TFPlayQuiz()));
              },
              child: const Text(
                "Başla ",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                "Türkiye Geneli Online Testlere\nKatıl ve Başarını Gör",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                "E-LooPsAkademi öğrenciler ne isterse onu yapar ❤",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
