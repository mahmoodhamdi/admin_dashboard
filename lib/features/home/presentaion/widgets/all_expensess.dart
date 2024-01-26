import 'package:admin_dashboard/features/home/presentaion/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/all_expenses_header.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AllExpensesHeader(),
        AllExpensesItem(
          allExpensesItemModel: AllExpensesItemModel(
              title: "title",
              subtitle: "subtitle",
              image: "assets/images/svgs/moneys.svg",
              amount: '\$20,129'),
        ),
      ],
    );
  }
}
