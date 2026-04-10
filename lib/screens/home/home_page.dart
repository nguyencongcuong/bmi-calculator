import 'package:bmi_calculator/core/enums.dart';
import 'package:bmi_calculator/core/maps.dart';
import 'package:bmi_calculator/domain/bmi.dart';
import 'package:bmi_calculator/screens/home/age.dart';
import 'package:bmi_calculator/screens/home/gender_card.dart';
import 'package:bmi_calculator/screens/home/height.dart';
import 'package:bmi_calculator/screens/home/weight.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var male = GenderCard(
      label: 'Male',
      value: '',
      gender: Gender.male,
      onChanged: (value) {
        setState(() {
          BMI.gender = Gender.male;
        });
      },
    );
    var female = GenderCard(
      label: 'Female',
      value: '',
      gender: Gender.female,
      onChanged: (value) {
        setState(() {
          BMI.gender = Gender.female;
        });
      },
    );
    var height = Height(
      onChanged: () {
        setState(() {});
      },
    );
    var weight = Weight(
      onChanged: () {
        setState(() {});
      },
    );
    var age = Age(
      onChanged: () {
        setState(() {});
      },
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Expanded(child: male),
                    Expanded(child: female),
                  ],
                ),
                Row(spacing: 10, children: [Expanded(child: height)]),
                Row(
                  spacing: 10,
                  children: [
                    Expanded(child: weight),
                    Expanded(child: age),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, routes['result']!);
              },
              child: Ink(
                child: Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontSize: Theme.of(
                        context,
                      ).textTheme.titleLarge?.fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
