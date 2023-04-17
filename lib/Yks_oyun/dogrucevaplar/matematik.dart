import 'package:flutter/material.dart';

class matex extends StatefulWidget {
  const matex({Key? key}) : super(key: key);

  @override
  _matexState createState() => _matexState();
}

class _matexState extends State<matex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.deepPurple) ,
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text
            ("E-LooPsAkademi YKS OYUN",
            style: TextStyle(fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/m1.png"),
              Image.asset("assets/images/m2.png"),
              Image.asset("assets/images/m3.png"),
              Image.asset("assets/images/m4.png"),


            ],
          ),
        )

    );
  }
}
