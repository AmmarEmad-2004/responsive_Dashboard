import 'package:dashboard_app/views/widgets/custom_background_container.dart';
import 'package:dashboard_app/views/widgets/income_body.dart';
import 'package:dashboard_app/views/widgets/income_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16),
          Expanded(child: IncomeBody()),
        ],
      ),
    );
  }
}
