import 'package:bmi_calculator/core/enums.dart';
import 'package:bmi_calculator/domain/bmi.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/label.dart';
import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  final VoidCallback? onChanged;

  const Weight({super.key, this.onChanged});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      active: true,
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.monitor_weight,
            size: 32,
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
          Label(text: 'Weight'.toUpperCase()),
          Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                BMI.weight.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                MetricUnit.weightKilograms.label,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    BMI.weight = BMI.weight + 1;
                  });
                  widget.onChanged?.call();
                },
                icon: Icon(Icons.add),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    BMI.weight = BMI.weight - 1;
                  });
                  widget.onChanged?.call();
                },
                icon: Icon(Icons.remove),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
