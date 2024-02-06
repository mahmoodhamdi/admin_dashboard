import 'package:admin_dashboard/features/home/presentaion/widgets/all_expensess.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/custom_drawer.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/quick_invoice.dart';
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
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AllExpenses(),
              SizedBox(height: 24),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
