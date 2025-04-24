import 'package:dashboard_app/utils/app_images.dart';
import 'package:dashboard_app/views/widgets/custom_drawer_items_list.dart';
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
        ],
      ),
    );
  }
}
