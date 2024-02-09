import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData())),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (event, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            value: 40,
            titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
            title: activeIndex == 0 ? "Design service" : "40%",
            titleStyle: AppStyles.font16SemiBold.copyWith(
              color: activeIndex == 0 ? null : Colors.white,
            ),
            radius: activeIndex == 0 ? 60 : 50,
            color: const Color(0xFF208CC8), 
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.3 : null,
            title: activeIndex == 1 ? "Design product" : "25%",
            value: 25,
            titleStyle: AppStyles.font16SemiBold.copyWith(
              color: activeIndex == 1 ? null : Colors.white,
            ),
            radius: activeIndex == 1 ? 60 : 50,
            color: const Color(0xFF4EB7F2),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.font16SemiBold.copyWith(
              color: activeIndex == 2 ? null : Colors.white,
            ),
            titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
            value: 20,
            title: activeIndex == 2 ? "Product royalti" : "20%",
            radius: activeIndex == 2 ? 60 : 50,
            color: const Color(0xFF064061),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.font16SemiBold.copyWith(
              color: activeIndex == 3 ? null : Colors.white,
            ),
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
            value: 15,
            title: activeIndex == 3 ? "Other" : "15%",
            radius: activeIndex == 3 ? 60 : 50,
            color: const Color(0xFFE2DECD),
          )
        ]);
  }
}
