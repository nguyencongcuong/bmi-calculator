import 'package:bmi_calculator/domain/bmi.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    var value = BMI.value.toStringAsFixed(2);
    var result = BMI.getResult();
    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value, style: Theme.of(context).textTheme.titleLarge),
            Text(result, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
