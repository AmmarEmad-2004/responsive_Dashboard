import 'package:dashboard_app/views/widgets/my_card_section.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [MyCardSection(), SizedBox(height: 24)]);
  }
}