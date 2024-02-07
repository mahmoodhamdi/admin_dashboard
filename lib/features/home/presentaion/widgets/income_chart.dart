import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getPieChartData());
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
            showTitle: false,
            value: 40,
            radius: activeIndex == 0 ? 60 : 50,
            color: const Color(0xFF208CC8),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 25,
            radius: activeIndex == 1 ? 60 : 50,
            color: const Color(0xFF4EB7F2),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 20,
            radius: activeIndex == 2 ? 60 : 50,
            color: const Color(0xFF064061),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 15,
            radius: activeIndex == 3 ? 60 : 50,
            color: const Color(0xFFE2DECD),
          )
        ]);
  }
}
