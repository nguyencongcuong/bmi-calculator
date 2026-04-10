import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  final bool active;
  final Function()? onTap;

  const ReusableCard({
    super.key,
    required this.child,
    required this.active,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: active
              ? Theme.of(context).colorScheme.primaryContainer
              : Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
