import 'package:admin_dashboard/features/home/presentaion/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      body: AllExpensesAndQuickInvoiceSection(),
    );
  }
}
