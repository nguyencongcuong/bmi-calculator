import 'package:bmi_calculator/domain/bmi.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/label.dart';
import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  final VoidCallback? onChanged;

  const Age({super.key, this.onChanged});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      active: true,
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            size: 32,
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
          Label(text: 'Age'.toUpperCase()),
          Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                BMI.age.toString(),
                style: Theme.of(context).textTheme.titleLarge,
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
                    BMI.age = BMI.age + 1;
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
                    BMI.age = BMI.age - 1;
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
