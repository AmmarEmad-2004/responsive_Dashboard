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
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),

      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: activeIndex == 0 ? 60 : 50,
          value: 20,
          color: Color(0xff064061),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 60 : 50,
          value: 22,
          color: Color(0xffE2DECD),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 60 : 50,
          value: 40,
          color: Color(0xff208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 60 : 50,
          value: 25,
          color: Color(0xff4EB7F2),
          showTitle: false,
        ),
      ],
    );
  }
}
