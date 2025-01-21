import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  final String backgroundImg;
  final Widget? child;
  const OnboardingWidget({
    super.key, required this.backgroundImg, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(backgroundImg), fit: BoxFit.fitWidth)),
      child: child,
    );
  }
}