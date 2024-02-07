//dots_indicator

import 'package:admin_dashboard/features/home/presentaion/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.dotsCount,
    required this.selectedIndex,
  });
  final int dotsCount;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List<Widget>.generate(dotsCount, (int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomDotIndicator(isActive: index == selectedIndex),
        );
      }),
    );
  }
}
