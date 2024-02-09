import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/latest_transactions_listview.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.font16Medium(context)),
        const SizedBox(height: 16),
        const LatestTransactionsListview()
      ],
    );
  }
}
