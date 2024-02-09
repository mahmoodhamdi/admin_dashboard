import 'package:admin_dashboard/core/utils/size_config.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_chart.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_detailes.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizeConfig.width <= 1750 && SizeConfig.width > SizeConfig.tablet
        ? const SizedBox()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
