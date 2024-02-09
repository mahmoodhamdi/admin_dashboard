import 'package:admin_dashboard/core/functions/methods.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        helperStyle:
            AppStyles.font16Regular(context)
            .copyWith(color: const Color(0XFFAAAAAA)),
        fillColor: const Color(0xfffafafa),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        disabledBorder: buildBorder(),
      ),
    );
  }
}
