// custom_dot_indicator.dart

import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32.0 : 8.0,
      height: 8.0,
      decoration: ShapeDecoration(
          color: isActive ? const Color(0xFF4DB7F2) : const Color(0xFFe7e7e7),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          )),
    );
  }
}
