import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/title_textfield_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/custom_button.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(
            child: TitleTextField(
                titleTextFieldModel: TitleTextFieldModel(
                    title: "Customer Name", hint: "Type Customer Name")),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: TitleTextField(
                titleTextFieldModel: TitleTextFieldModel(
                    title: "Customer Email", hint: "Type Customer Email")),
          ),
        ]),
        const SizedBox(
          height: 24,
        ),
        Row(children: [
          Expanded(
            child: TitleTextField(
                titleTextFieldModel: TitleTextFieldModel(
                    title: "Item Name", hint: "Type Item Name")),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: TitleTextField(
                titleTextFieldModel:
                    TitleTextFieldModel(title: "Item Mount", hint: "USD")),
          ),
        ]),
        const SizedBox(
          height: 24,
        ),
        Row(children: [
          Expanded(
              child: CustomButton(
            color: const Color(0xFFFFFFFF),
            text: Text("Add more details",
                style: AppStyles.font18SemiBold(context)
                    .copyWith(color: const Color(0xFF4DB7F2))),
          )),
          const SizedBox(
            width: 24,
          ),
          Expanded(
              child: CustomButton(
            text: Text('Send Money', style: AppStyles.font18SemiBold(context)),
            color: const Color(0xFF4DB7F2),
          )),
        ])
      ],
    );
  }
}
