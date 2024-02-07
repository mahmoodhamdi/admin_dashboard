import 'package:admin_dashboard/features/home/presentaion/models/transaction_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/transaction_listile.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListview extends StatelessWidget {
  const TransactionHistoryListview(
      {super.key, required this.transactionModelsList});
  final List<TransactionModel> transactionModelsList;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactionModelsList
            .map((e) => TransactionListile(
              index: transactionModelsList.indexOf(e),
              transactionModel: e,
            ))
            .toList());
  }
}
