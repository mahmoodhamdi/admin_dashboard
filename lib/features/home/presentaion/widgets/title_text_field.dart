import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/title_textfield_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.titleTextFieldModel});
  final TitleTextFieldModel titleTextFieldModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleTextFieldModel.title,
          style: AppStyles.font16Medium(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: titleTextFieldModel.hint,
        ),
      ],
    );
  }
}
