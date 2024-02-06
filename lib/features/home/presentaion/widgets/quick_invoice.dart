import 'package:admin_dashboard/features/home/presentaion/widgets/latest_transactions_listview.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      QuickInvoiceHeader(),
      SizedBox(height: 16),
      LatestTransactionsListview(),
    ]);
  }
}
