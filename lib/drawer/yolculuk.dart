import 'package:flutter/material.dart';

class Yolculuk extends StatefulWidget {
  const Yolculuk({Key? key}) : super(key: key);

  @override
  _YolculukState createState() => _YolculukState();
}

class _YolculukState extends State<Yolculuk> {
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
            "E-LooPsAkademi",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/yolculuk1.png"),
              Image.asset("assets/images/yolculuk2.png"),
              Image.asset("assets/images/yolculuk3.png"),
            ],
          ),
        ));
  }
}
