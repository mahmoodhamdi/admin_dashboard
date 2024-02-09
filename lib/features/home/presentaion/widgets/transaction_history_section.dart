import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/transaction_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/transaction_history_listview.dart';
import 'package:flutter/material.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TransactionModel> transactionModelsList = [
      TransactionModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: "\$20,129",
      ),
      TransactionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: "\$2,000",
      ),
      TransactionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: "\$20,129",
      )
    ];
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text("Transaction History", style: AppStyles.font20SemiBold(context)),
          Text("See All",
              style: AppStyles.font16Medium(context)
                  .copyWith(color: const Color(0xFF4DB7F2))),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Text("13 April 2022",
          style:
              AppStyles.font16Medium(context)
              .copyWith(color: const Color(0xffAAAAAA))),
      TransactionHistoryListview(
        transactionModelsList: transactionModelsList,
      )
    ]);
  }
}
