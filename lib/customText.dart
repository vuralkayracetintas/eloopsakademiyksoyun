import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Doğru - Yanlış",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headlineLarge!
            .copyWith(color: Colors.blue, fontWeight: FontWeight.bold)
        //TextStyle(
        //   color: Colors.blue,
        //   fontSize: 40,
        //   fontWeight: FontWeight.bold,
        // ),
        );
  }
}
