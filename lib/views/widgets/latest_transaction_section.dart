import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/views/widgets/latest_transaction_items.dart';

import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.textMedium16(context)),
        SizedBox(height: 16),
        LatestTransactionItems(),
      ],
    );
  }
}
