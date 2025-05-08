import 'package:dashboard_app/views/widgets/details_income_chart.dart';
import 'package:dashboard_app/views/widgets/income_chart.dart';
import 'package:dashboard_app/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width >= 1250 && width <= 1386
        ? Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: DetailsIncomeChart(),
          ),
        )
        : Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: IncomeChart()),
            SizedBox(width: 40),

            Expanded(flex: 2, child: IncomeDetails()),
          ],
        );
  }
}
