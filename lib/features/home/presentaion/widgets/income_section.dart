import 'package:admin_dashboard/features/home/presentaion/widgets/background_container.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_chart.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_detailes.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
      child: Column(children: [
        IncomeHeader(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(
              child: IncomeDetails(),
            ),
          ],
        ),
      ]),
    );
  }
}
