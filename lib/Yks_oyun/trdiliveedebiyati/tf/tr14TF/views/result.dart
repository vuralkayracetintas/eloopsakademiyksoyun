import 'package:flutter/material.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/trdiliveedebiyati/tf/tr14TF/views/homepage.dart';

class TrvEde14Result extends StatefulWidget {
  int score, totalQuestion, correct, incorrect;
  TrvEde14Result({
    Key? key,
    required this.score,
    required this.totalQuestion,
    required this.correct,
    required this.incorrect,
  }) : super(key: key);

  @override
  _TrvEde14ResultState createState() => _TrvEde14ResultState();
}

class _TrvEde14ResultState extends State<TrvEde14Result> {
  String greeting = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var percentage = (widget.score);
    if (percentage >= 380) {
      greeting = "Çok İyisin ❤😍";
    } else if (percentage > 300 && percentage < 380) {
      greeting = "Fullenmeye Ramak Kaldı 😉";
    } else if (percentage > 220 && percentage <= 300) {
      greeting = "Orta Direk! 🙂";
    } else if (percentage > 150 && percentage <= 220) {
      greeting = "Daha dikkatli olmalısın!! 🤨";
    } else if (percentage > 100 && percentage <= 150) {
      greeting = "Biraz daha baksan mı? 😐";
    } else if (percentage <= 100) {
      greeting = "Aga Sen Bitmişsin! 😑";
    }
  }

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              greeting,
              style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 25),
            Text(
              "Sana puanım ${widget.totalQuestion * 10} üstünden ${widget.score}",
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 25),
            Text(
              " ${widget.totalQuestion} Toplam Soru, ${widget.correct} Doğru, ${widget.incorrect} Yanlış",
              style: const TextStyle(
                  color: Colors.brown,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrvEde14HomePage()));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 54),
                child: const Text(
                  "Yeniden",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blue, width: 2)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
