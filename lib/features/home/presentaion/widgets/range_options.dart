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
      child: Row(children: [
        Text(
          "Monthly",
          style: AppStyles.font16Medium(context),
        ),
        const SizedBox(width: 18),
        const Icon(Icons.arrow_drop_down_outlined)
      ]),
    );
  }
}
