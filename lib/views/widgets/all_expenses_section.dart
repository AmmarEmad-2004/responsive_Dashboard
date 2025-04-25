import 'package:dashboard_app/views/widgets/all_expenses_header.dart';
import 'package:flutter/material.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(children: [AllExpensesHeader()]),
          ),
        ],
      ),
    );
  }
}
