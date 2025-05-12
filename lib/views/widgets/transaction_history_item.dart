import 'package:dashboard_app/models/trainsaction_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.item});
  final TransactionModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xfffafafa),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        title: Text(item.title, style: AppStyles.textSemiBold16(context)),
        subtitle: Text(
          item.subTitle,
          style: AppStyles.textRegular16(context).copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          item.amount,
          style: AppStyles.textSemiBold20(context).copyWith(
            color: item.isWithDrawal ? Color(0xffF3735E) : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
