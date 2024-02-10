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
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: index == 0
                  ? AppStyles.font16SemiBold(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.font16SemiBold(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.subtitle,
              style: index == 0
                  ? AppStyles.font14Regular(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.font14Regular(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.amount,
              style: index == 0
                  ? AppStyles.font24SemiBold(context)
                  : AppStyles.font24SemiBold(context)
                      .copyWith(color: const Color(0xFF4DB7F2)),
            ),
          ),
        ]));
  }
}
