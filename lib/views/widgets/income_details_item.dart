import 'package:dashboard_app/models/income_details_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.item});
  final IncomeDetailsModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(color: item.color, shape: OvalBorder()),
      ),
      title: Text(item.title, style: AppStyles.textRegular16(context)),
      trailing: Text(
        item.amount,
        style: AppStyles.textMedium16(context).copyWith(color: Color(0xff208CC8)),
      ),
    );
  }
}
