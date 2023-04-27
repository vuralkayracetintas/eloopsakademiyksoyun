import 'package:flutter/material.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/trdiliveedebiyati/tf/tr11TF/views/homepage.dart';

class TrvEde11Result extends StatefulWidget {
  int score, totalQuestion, correct, incorrect;
  TrvEde11Result({
    Key? key,
    required this.score,
    required this.totalQuestion,
    required this.correct,
    required this.incorrect,
  }) : super(key: key);

  @override
  _TrvEde11ResultState createState() => _TrvEde11ResultState();
}

class _TrvEde11ResultState extends State<TrvEde11Result> {
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.5, 50),
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.blue, width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrvEde11HomePage()));
              },
              child: const Text(
                'Yeniden',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
