import 'package:flutter/material.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/biyoloji/b7SST/views/play_quiz.dart';
import 'package:yksoyun_23_06_2022/customText.dart';

class Bt7TFHomePage extends StatefulWidget {
  const Bt7TFHomePage({Key? key}) : super(key: key);

  @override
  _Bt7TFHomePageState createState() => _Bt7TFHomePageState();
}

class _Bt7TFHomePageState extends State<Bt7TFHomePage> {
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
                "Biyoloji VII",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(ekranGenisligi * 0.5, 40),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Bt7TFPlayQuiz()));
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
