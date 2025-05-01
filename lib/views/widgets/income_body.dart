import 'package:dashboard_app/views/widgets/income_chart.dart';
import 'package:dashboard_app/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: IncomeChart()),
        Expanded(child: IncomeDetails()),
      ],
    );
  }
}