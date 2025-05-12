import 'package:dashboard_app/models/all_expenses_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/views/widgets/all_expenses_body_header.dart';
import 'package:flutter/material.dart';

class ActiveAllExpensesBodyItem extends StatelessWidget {
  const ActiveAllExpensesBodyItem({super.key, required this.itemModel});
  final AllExpensesModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesBodyHeader(
            image: itemModel.image,
            color: Colors.white,
            backgroundColor: Colors.white.withValues(
              alpha: 0.10000000149011612,
            ),
          ),
          SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyles.textSemiBold16(context).copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyles.textRegular14(context).copyWith(color: Color(0xffFAFAFA)),
          ),
          SizedBox(height: 16),
          Text(
            itemModel.price,
            style: AppStyles.textSemiBold24(context).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
