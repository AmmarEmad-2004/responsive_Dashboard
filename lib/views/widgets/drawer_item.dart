import 'package:dashboard_app/models/drawer_item_model.dart';
import 'package:dashboard_app/views/widgets/active_drawer_item.dart';
import 'package:dashboard_app/views/widgets/in_active_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item, required this.isSelected});
  final bool isSelected;
  final DrawerItemModel item;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(item: item)
        : InActiveDrawerItem(item: item);
  }
}




