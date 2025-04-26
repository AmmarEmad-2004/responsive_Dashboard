import 'package:dashboard_app/views/widgets/all_expenses_body.dart';
import 'package:dashboard_app/views/widgets/all_expenses_header.dart';
import 'package:dashboard_app/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBackgroundContainer(
          child: Column(
            children: [
              AllExpensesHeader(),
              SizedBox(height: 16),
              AllExpensesBody(),
            ],
          ),
        ),
      ],
    );
  }
}
