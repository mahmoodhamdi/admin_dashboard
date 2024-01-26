import 'package:admin_dashboard/features/home/presentaion/widgets/all_expenses_header.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/all_expensess_listview.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesHeader(),
        SizedBox(height: 16),
        AllExpensesListview()
      ],
    );
  }
}
