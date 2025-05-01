import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History', style: AppStyles.textSemiBold20),
        Text(
          'See all',
          style: AppStyles.textMedium16.copyWith(color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}