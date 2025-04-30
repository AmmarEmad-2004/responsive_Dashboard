import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/views/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.textSemiBold20),
        SizedBox(height: 20),
        CustomCard(),
      ],
    );
  }
}