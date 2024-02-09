import 'package:admin_dashboard/features/home/presentaion/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/custom_drawer.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_section.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/my_card_transaction_history_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Column(children: [
                        SizedBox(height: 40),
                        MyCardTransactionHistorySection(),
                        SizedBox(height: 24),
                        Expanded(
                          child: IncomeSection(),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
