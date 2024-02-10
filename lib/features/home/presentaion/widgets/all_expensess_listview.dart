import 'package:admin_dashboard/features/home/presentaion/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesListview extends StatelessWidget {
  const AllExpensesListview({super.key});
  @override
  Widget build(BuildContext context) {
    final List<AllExpensesItemModel> allExpensesItemModelList = [
      AllExpensesItemModel(
        title: "Balance",
        subtitle: "April 2022",
        image: "assets/images/svgs/moneys.svg",
        amount: '\$20,129',
      ),
      AllExpensesItemModel(
        title: "Income",
        subtitle: "April 2022",
        image: "assets/images/svgs/card-receive.svg",
        amount: '\$20,129',
      ),
      AllExpensesItemModel(
        title: "Expenses",
        subtitle: "April 2022",
        image: "assets/images/svgs/card-send.svg",
        amount: '\$20,129',
      )
    ];

    return Row(
      children: allExpensesItemModelList
          .map(
            (e) => Expanded(
                child: AllExpensesItem(
                    index: allExpensesItemModelList.indexOf(e),
                    allExpensesItemModel: e)),
          )
          .toList(),
      // children: List.generate(
      //   3,
      //  )
    );

    // ListView.builder(
    //   itemCount: 3,
    //   physics: const NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (context, index) => AllExpensesItem(
    //       allExpensesItemModel: allExpensesItemModelList[index]),
    // );
  }
}
