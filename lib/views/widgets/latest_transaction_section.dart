import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/views/widgets/latest_transaction_items.dart';
import 'package:flutter/material.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.textMedium16),
        SizedBox(height: 12),
        LatestTransactionItems(),
      ],
    );
  }
}
