import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Latest Transaction", style: AppStyles.font16Medium),
        SizedBox(height: 16),
      ],
    );
  }
}
