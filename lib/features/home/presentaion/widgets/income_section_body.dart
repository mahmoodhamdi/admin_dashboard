import 'package:admin_dashboard/core/utils/size_config.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/detailed_income_chart.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_chart.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_detailes.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width <= 1750 && width > SizeConfig.tablet
        ? const Expanded(
            child: DetailedIncomeChart(),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
