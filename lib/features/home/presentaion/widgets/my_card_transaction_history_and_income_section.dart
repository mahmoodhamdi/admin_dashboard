import 'package:admin_dashboard/features/home/presentaion/widgets/background_container.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/my_cards_pageview.dart';
import 'package:flutter/material.dart';

class MyCardTransactionHistoryAndIncomeSection extends StatelessWidget {
  const MyCardTransactionHistoryAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(child: MyCardsPageView());
  }
}
