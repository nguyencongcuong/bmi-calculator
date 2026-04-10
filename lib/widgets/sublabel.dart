import 'package:flutter/material.dart';

class SubLabel extends StatelessWidget {
  final String text;
  const SubLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}
