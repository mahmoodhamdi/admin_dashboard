import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionListile extends StatelessWidget {
  const TransactionListile({
    super.key,
    required this.transactionModel,
    required this.index,
  });
  final TransactionModel transactionModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      contentPadding: const EdgeInsets.all(16),
      title: Text(
        transactionModel.title,
        style: AppStyles.font16SemiBold, //
      ),
      subtitle: Text(
        transactionModel.date,
        style: AppStyles.font16Regular.copyWith(color: const Color(0XFFAAAAAA)),
      ),
      trailing: Text(transactionModel.amount,
          style: AppStyles.font20SemiBold.copyWith(
              color: index == 0
                  ? const Color(0xFFF3735E)
                  : const Color(0xff7DD97B))),
    );
  }
}
