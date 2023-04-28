import 'package:flutter/material.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/trdiliveedebiyati/tf/tr1TF/data/data.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/trdiliveedebiyati/tf/tr1TF/models/question_model.dart';
import 'package:yksoyun_23_06_2022/Yks_oyun/trdiliveedebiyati/tf/tr1TF/views/result.dart';

class TrvEde1PlayQuiz extends StatefulWidget {
  const TrvEde1PlayQuiz({Key? key}) : super(key: key);

  @override
  _TrvEde1PlayQuizState createState() => _TrvEde1PlayQuizState();
}

class _TrvEde1PlayQuizState extends State<TrvEde1PlayQuiz>
    with SingleTickerProviderStateMixin {
  List<TrvEde1QuestionModel> questions = <TrvEde1QuestionModel>[];
  int index = 0;
  int points = 0;
  int correct = 0;
  int incorrect = 0;

  late AnimationController controller;

  late Animation animation;

  double beginAnim = 0.0;

  double endAnim = 1.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    questions = getQuestionstrd();

    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation = Tween(begin: beginAnim, end: endAnim).animate(controller)
      ..addListener(() {
        setState(() {
          // Change here any Animation object value.
        });
      });

    startProgress();

    animation.addStatusListener((AnimationStatus animationStatus) {
      if (animationStatus == AnimationStatus.completed) {
        if (index < questions.length - 1) {
          index++;
          resetProgress();
          startProgress();
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => TrvEde1Result(
                        score: points,
                        totalQuestion: questions.length,
                        correct: correct,
                        incorrect: incorrect,
                      )));
        }
      }
    });
  }

  startProgress() {
    controller.forward();
  }

  stopProgress() {
    controller.stop();
  }

  resetProgress() {
    controller.reset();
  }

  void nextQuestion() {
    if (index < questions.length - 1) {
      index++;
      resetProgress();
      startProgress();
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => TrvEde1Result(
                    score: points,
                    totalQuestion: questions.length,
                    correct: correct,
                    incorrect: incorrect,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.symmetric(vertical: 80),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "${index + 1}/${questions.length}",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Soru",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "$points",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Puan",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              questions[index].getQuestion() + "",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                child: LinearProgressIndicator(
              value: animation.value,
              color: Colors.deepPurple,
            )),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(110, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          )),
                      onPressed: () {
                        if (questions[index].getAnswer() == "True") {
                          setState(() {
                            points = points + 10;
                            nextQuestion();
                            correct++;
                          });
                        } else {
                          setState(() {
                            points = points - 5;
                            nextQuestion();
                            incorrect++;
                          });
                        }
                      },
                      child: const Text(
                        'Doğru',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: const Size(110, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          )),
                      onPressed: () {
                        if (questions[index].getAnswer() == "False") {
                          setState(() {
                            points = points + 10;
                            nextQuestion();
                            correct++;
                          });
                        } else {
                          setState(() {
                            points = points - 5;
                            nextQuestion();
                            incorrect++;
                          });
                        }
                      },
                      child: const Text(
                        'Yanlış',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}
