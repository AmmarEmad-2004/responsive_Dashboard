import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailsIncomeChart extends StatefulWidget {
  const DetailsIncomeChart({super.key});

  @override
  State<DetailsIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailsIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 121 / 120,
      child: PieChart(getPieChartData()),
    );
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
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? 'Other' : '22%',
          radius: activeIndex == 0 ? 45 : 35,
          value: 22,
          color: Color(0xffE2DECD),
          showTitle: true,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
          title: activeIndex == 1 ? 'Product royalti' : '20%',
          radius: activeIndex == 1 ? 45 : 35,
          value: 20,
          color: Color(0xff064061),
          showTitle: true,
        ),

        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          title: activeIndex == 2 ? 'Design product' : '25%',
          radius: activeIndex == 2 ? 45 : 35,
          value: 25,
          color: Color(0xff4EB7F2),
          showTitle: true,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          title: activeIndex == 3 ? 'Design service' : '40%',
          radius: activeIndex == 3 ? 45 : 35,
          value: 40,
          color: Color(0xff208CC8),
          showTitle: true,
        ),
      ],
    );
  }
}
