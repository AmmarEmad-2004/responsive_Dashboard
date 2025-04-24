import 'package:dashboard_app/models/drawer_item_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.imageUrl),
      title: Text(item.title),
      titleTextStyle: AppStyles.textRegular16,
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.imageUrl),
      title: Text(item.title),
      titleTextStyle: AppStyles.textBold16,
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color: Color(0xff4EB7F2)),
      ),
    );
  }
}
