import 'package:bmi_calculator/core/enums.dart';
import 'package:bmi_calculator/domain/bmi.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatefulWidget {
  final String label;
  final String value;
  final Gender gender;
  final Function(Gender) onChanged;

  const GenderCard({
    super.key,
    required this.label,
    required this.value,
    required this.gender,
    required this.onChanged,
  });

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      onTap: () {
        setState(() {
          BMI.gender = widget.gender;
          widget.onChanged(widget.gender);
        });
      },
      active: BMI.gender == widget.gender,
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.gender == Gender.male ? Icons.male : Icons.female,
            size: 32,
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
          Text(widget.label, style: Theme.of(context).textTheme.titleLarge),
        ],
      ),
    );
  }
}
