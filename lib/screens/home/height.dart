import 'package:bmi_calculator/core/enums.dart';
import 'package:bmi_calculator/domain/bmi.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/label.dart';
import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  final VoidCallback? onChanged;

  const Height({super.key, this.onChanged});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      child: ReusableCard(
        active: true,
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.height,
              size: 32,
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
            Label(text: 'Height'.toUpperCase()),
            Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  BMI.height.toStringAsFixed(2),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  MetricUnit.heightMetres.label,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                thumbColor: Theme.of(context).colorScheme.primary,
                inactiveTrackColor: Theme.of(context).colorScheme.secondary,
              ),
              child: Slider(
                label: BMI.height.toStringAsFixed(2),
                value: BMI.height,
                min: 1,
                max: 2.5,
                divisions: 150,
                onChanged: (newValue) {
                  setState(() {
                    BMI.height = newValue;
                  });
                  widget.onChanged?.call();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
