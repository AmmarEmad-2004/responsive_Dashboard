import 'package:dashboard_app/views/widgets/transaction_history_body.dart';
import 'package:dashboard_app/views/widgets/transaction_history_header.dart';
import 'package:flutter/material.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        TransactionHistoryBody(),
      ],
    );
  }
}
