import 'package:dashboard_app/models/drawer_item_model.dart';
import 'package:dashboard_app/utils/app_images.dart';
import 'package:dashboard_app/views/widgets/custom_drawer_items_list.dart';
import 'package:dashboard_app/views/widgets/in_active_drawer_item.dart';
import 'package:dashboard_app/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
            imageUrl: AppImages.imagesAvatar3,
          ),
          SizedBox(height: 8),
          CustomDrawerItemsList(),
          Spacer(),
          InActiveDrawerItem(
            item: DrawerItemModel(
              title: 'Setting system',
              imageUrl: AppImages.imagesSetting2,
            ),
          ),
          InActiveDrawerItem(
            item: DrawerItemModel(
              title: 'Logout account',
              imageUrl: AppImages.imagesLogout,
            ),
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
