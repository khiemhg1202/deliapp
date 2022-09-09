
import 'package:deliveryapp/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'values/app_colors.dart';
import 'values/app_styles.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const WelcomePage(),
    );
  }
}

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
                color: AppColors.primaryColor,
                alignment: Alignment.bottomCenter,
                child: Image.asset(AppAssets.fruit),
                
              )),
          Expanded(
              flex: 1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Get The Freshest Fruit Salad Combo',
                      style: AppStyles.h1,
                      textAlign: TextAlign.right,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                        style: AppStyles.h2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                AppColors.primaryColor),
                          ),
                          child: const Text(
                            'Let’s Continue',
                          ),
                        ),
                      ],
                    )
                  ]))
        ],
      ),
    );
  }
}
