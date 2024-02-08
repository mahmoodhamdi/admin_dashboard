import 'package:admin_dashboard/features/home/presentaion/widgets/income_section.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/my_card_transaction_history_section.dart';
import 'package:flutter/material.dart';

class MyCardTransactionHistoryAndIncomeSection extends StatelessWidget {
  const MyCardTransactionHistoryAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SizedBox(height: 40),
      MyCardTransactionHistorySection(),
      SizedBox(height: 24),
      Expanded(child: IncomeSection()),
    ]);
  }
}
