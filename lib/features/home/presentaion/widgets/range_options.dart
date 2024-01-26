import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Row(children: [
        Text(
          "Monthly",
          style: AppStyles.font16Medium,
        ),
        SizedBox(width: 18),
        Icon(Icons.arrow_drop_down_outlined)
      ]),
    );
  }
}
