import 'package:flutter/material.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/cografya/TF/cf3TF/views/play_quiz.dart';
import 'package:yksoyun_23_06_2022/customText.dart';

class cf3HomePage extends StatefulWidget {
  const cf3HomePage({Key? key}) : super(key: key);

  @override
  _cf3HomePageState createState() => _cf3HomePageState();
}

class _cf3HomePageState extends State<cf3HomePage> {
  @override
  Widget build(BuildContext context) {
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
                "Coğrafya III",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.5, 40),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const cf3PlayQuiz()));
              },
              child: const Text(
                "Başla",
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