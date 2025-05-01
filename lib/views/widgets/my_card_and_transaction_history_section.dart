import 'package:dashboard_app/views/widgets/custom_background_container.dart';
import 'package:dashboard_app/views/widgets/my_card_section.dart';
import 'package:dashboard_app/views/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
