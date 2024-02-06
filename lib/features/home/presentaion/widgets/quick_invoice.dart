import 'package:admin_dashboard/features/home/presentaion/widgets/background_container.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/latest_transaction_widget.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        QuickInvoiceHeader(),
        SizedBox(height: 24),
        LatestTransaction(),
      ]),
    );
  }
}
