import 'package:bmi_calculator/domain/bmi.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your BMI')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text(
                BMI.getResult().toUpperCase(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                BMI.value.toStringAsFixed(2),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                BMI.getAdvice(),
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
