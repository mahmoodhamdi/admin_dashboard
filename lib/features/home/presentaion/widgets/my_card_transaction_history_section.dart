import 'package:admin_dashboard/features/home/presentaion/widgets/background_container.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/my_card_section.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class MyCardTransactionHistorySection extends StatelessWidget {
  const MyCardTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0XFFF1F1F1),
          ),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
