import 'package:admin_dashboard/features/home/presentaion/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/custom_drawer.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/my_card_transaction_history_and_income_section.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: AllExpensesAndQuickInvoiceSection(),
                ),
                MyCardTransactionHistoryAndIncomeSection()
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
