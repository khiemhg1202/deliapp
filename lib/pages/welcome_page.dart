import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
              child: Container(
            color: Colors.blue,
          )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}
