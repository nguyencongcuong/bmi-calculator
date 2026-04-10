import 'package:bmi_calculator/core/maps.dart';
import 'package:bmi_calculator/screens/home/home_page.dart';
import 'package:bmi_calculator/screens/result/result_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      initialRoute: routes['home']!,
      routes: {
        routes['home']!: (context) => MyHomePage(title: 'BMI Calculator'),
        routes['result']!: (context) => ResultPage(),
      },
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
