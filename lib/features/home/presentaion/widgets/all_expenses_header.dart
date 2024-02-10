import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/range_options.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Row(children: [
      Text(
        'All Expenses',
        style: AppStyles.font20SemiBold(context),
      ),
      const Expanded(child: SizedBox()),
      const RangeOptions(),
    ]);
  }
}
