import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/views/widgets/custom_header_option.dart';
import 'package:flutter/material.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.textSemiBold20),
        CustomHeaderOption(),
      ],
    );
  }
}
