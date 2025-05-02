import 'package:dashboard_app/models/income_details_model.dart';
import 'package:dashboard_app/views/widgets/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailsModel(
      title: 'Design service',
      amount: '40%',
      color: Color(0xff208CC8),
    ),
    IncomeDetailsModel(
      title: 'Design product',
      amount: '25%',
      color: Color(0xff4EB7F2),
    ),

    IncomeDetailsModel(
      title: 'Product royalti',
      amount: '20%',
      color: Color(0xff064061),
    ),

    IncomeDetailsModel(title: 'Other', amount: '22%', color: Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.asMap().entries.map((e) {
            // int index = e.key;
            var item = e.value;
            return Padding(
              padding: EdgeInsets.zero,
              child: IncomeDetailsItem(item: item),
            );
          }).toList(),
    );
  }
}
