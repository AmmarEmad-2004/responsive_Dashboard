import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/views/widgets/custom_header_option.dart';
import 'package:flutter/widgets.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.textSemiBold20(context)),
        Expanded(child: SizedBox()),
        CustomHeaderOption(),
      ],
    );
  }
}
