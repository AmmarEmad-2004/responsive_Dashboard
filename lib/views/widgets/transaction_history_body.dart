import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/views/widgets/transaction_history_list.dart';
import 'package:flutter/material.dart';

class TransactionHistoryBody extends StatelessWidget {
  const TransactionHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '13 April 2022',
          style: AppStyles.textMedium16.copyWith(color: Color(0xffAAAAAA)),
        ),
        SizedBox(height: 16),
        TransactionHistoryList(),
      ],
    );
  }
}
