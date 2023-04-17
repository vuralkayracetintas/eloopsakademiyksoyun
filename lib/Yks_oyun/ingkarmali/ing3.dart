import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';

class ing3MyHomePage extends StatefulWidget {
  const ing3MyHomePage({Key? key}) : super(key: key);

  @override
  _ing3MyHomePageState createState() => _ing3MyHomePageState();
}

class _ing3MyHomePageState extends State<ing3MyHomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  List<String> database = List<String>.empty();
  int index = -1, clickHint = 0;

  String correctAnswer = "", suggest = "";
  var correctAnswerKey = {};
  Map<int, int> showSuggestAnswerMap = {};
  Map<int, bool> showCorrectAnswerMap = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //load database
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await addToDatabaseFromAssets();
      if (database.isNotEmpty) {
        startGame();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.deepPurple),
            onPressed: () => startGame(),
          ),
        ],
      ),
      body: database.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  database.isNotEmpty
                      ? Expanded(
                          flex: 2,
                          child: Image.asset(database[index]),
                        )
                      : Container(),
                  database.isNotEmpty
                      ? Expanded(
                          flex: 1,
                          child: GridView.builder(
                            itemCount: correctAnswer.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 8,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                  color: Colors.deepPurple,
                                  child: showCorrectAnswerMap[index] == true
                                      ? Center(
                                          child: Text(
                                            String.fromCharCode(
                                                correctAnswerKey[index]),
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        )
                                      : Container());
                            },
                          ),
                        )
                      : Container(),
                  database.isNotEmpty
                      ? Expanded(
                          flex: 1,
                          child: GridView.builder(
                            itemCount: suggest.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 8,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  if (correctAnswer
                                      .toUpperCase()
                                      .contains(suggest[index].toUpperCase())) {
                                    correctAnswerKey.forEach((key, value) {
                                      if (String.fromCharCode(value)
                                              .toUpperCase() ==
                                          suggest[index].toUpperCase()) {
                                        setState(() {
                                          showCorrectAnswerMap[key] = true;
                                          showSuggestAnswerMap[index] = 1;
                                        });
                                      }
                                    });
                                  } else {
                                    setState(() {
                                      showSuggestAnswerMap[index] = 0;
                                    });
                                  }
                                },
                                child: Card(
                                  color: showSuggestAnswerMap[index] == -1
                                      ? Colors.white
                                      : showSuggestAnswerMap[index] == -0
                                          ? Colors.red
                                          : Colors.greenAccent,
                                  child: Center(
                                    child: showSuggestAnswerMap[index] == 1
                                        ? const Icon(Icons.check,
                                            color: Colors.white)
                                        : showSuggestAnswerMap[index] == 0
                                            ? const Icon(Icons.clear)
                                            : Text(suggest[index],
                                                style: const TextStyle(
                                                    color: Colors.black)),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      : Container(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: showCorrectAnswerMap.values.contains(false)
                          ? null
                          : () => startGame(),
                      child: const Text('Sonra'),
                    ),
                  ),
                ],
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Future addToDatabaseFromAssets() async {
    final manifestContent =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final imagePaths = manifestMap.keys
        .where((element) => element.contains('ing/ing3/'))
        .where((element) => element.contains('.png'))
        .toList();
    setState(() {
      database = imagePaths;
    });
  }

  void startGame() {
    correctAnswer = suggest = "";
    showSuggestAnswerMap.clear();
    showCorrectAnswerMap.clear();
    correctAnswerKey = {};

    var lastIndex = index;
    do {
      index = Random().nextInt(database.length - 1);
    } while (index == lastIndex);

    correctAnswer = database[index]
        .substring(database[index].lastIndexOf('/') + 1,
            database[index].lastIndexOf('.'))
        .toUpperCase();

    correctAnswerKey = correctAnswer.runes.toList().asMap();
    correctAnswerKey.forEach((key, value) {
      showCorrectAnswerMap.putIfAbsent(key, () => false);
    });

    suggest = randomWithAnswer(correctAnswer).toUpperCase();
    var list = suggest.runes.toList();
    list.shuffle();
    list.asMap().forEach((key, value) {
      showSuggestAnswerMap.putIfAbsent(key, () => -1);
    });
    suggest = String.fromCharCodes(list);
    setState(() {});
  }

  String randomWithAnswer(String correctAnswer) {
    const aToz = 'qwertyuıopilkjhgfdsazxcvbnmç';
    int originalLengt = correctAnswer.length;
    var randomText = '';
    for (int i = 0; i < originalLengt; i++) {
      randomText += aToz[Random().nextInt(aToz.length)];
    }
    randomText = String.fromCharCodes(randomText.runes.toSet().toList());
    correctAnswer += randomText;
    return correctAnswer;
  }
}
