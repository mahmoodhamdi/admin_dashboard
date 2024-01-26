import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.index});
  final AllExpensesItemModel allExpensesItemModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: index == 0 ? const Color(0xFF4DB7F2) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AllExpensesItemHeader(
            color: index != 0 ? const Color(0xFF4DB7F2) : null,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: index == 0
                ? AppStyles.font16SemiBold.copyWith(color: Colors.white)
                : AppStyles.font16SemiBold,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.subtitle,
            style: index == 0
                ? AppStyles.font14Regular.copyWith(color: Colors.white)
                : AppStyles.font14Regular,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.amount,
            style: index == 0
                ? AppStyles.font24SemiBold
                : AppStyles.font24SemiBold
                    .copyWith(color: const Color(0xFF4DB7F2)),
          ),
        ]));
  }
}
