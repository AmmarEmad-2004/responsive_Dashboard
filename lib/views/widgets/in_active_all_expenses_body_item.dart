import 'package:dashboard_app/models/all_expenses_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/views/widgets/all_expenses_body_header.dart';
import 'package:flutter/material.dart';

class InActiveAllExpensesBodyItem extends StatelessWidget {
  const InActiveAllExpensesBodyItem({super.key, required this.itemModel});
  final AllExpensesModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesBodyHeader(image: itemModel.image),
          SizedBox(height: 34),
          Text(itemModel.title, style: AppStyles.textSemiBold16),
          SizedBox(height: 8),
          Text(itemModel.date, style: AppStyles.textRegular14),
          SizedBox(height: 16),
          Text(itemModel.price, style: AppStyles.textSemiBold24),
        ],
      ),
    );
  }
}


