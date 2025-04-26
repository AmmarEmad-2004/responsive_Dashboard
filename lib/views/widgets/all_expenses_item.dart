import 'package:dashboard_app/models/all_expenses_model.dart';
import 'package:dashboard_app/views/widgets/active_all_expenses_body_item.dart';
import 'package:dashboard_app/views/widgets/in_active_all_expenses_body_item.dart';
import 'package:flutter/widgets.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.item,
    required this.isSelected,
  });
  final AllExpensesModel item;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesBodyItem(itemModel: item)
        : InActiveAllExpensesBodyItem(itemModel: item);
  }
}
