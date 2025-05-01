import 'package:dashboard_app/models/trainsaction_model.dart';
import 'package:dashboard_app/views/widgets/transaction_history_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});
  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithDrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithDrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((item) => TransactionHistoryItem(item: item)).toList(),
    );
  }
}
