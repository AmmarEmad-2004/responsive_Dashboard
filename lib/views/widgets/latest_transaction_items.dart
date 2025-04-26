import 'package:dashboard_app/models/user_info_model.dart';
import 'package:dashboard_app/utils/app_images.dart';
import 'package:dashboard_app/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionItems extends StatelessWidget {
  const LatestTransactionItems({super.key});
  static const transactionItems = [
    UserInfoModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
      imageUrl: AppImages.imagesAvatar1,
    ),
    UserInfoModel(
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
      imageUrl: AppImages.imagesAvatar2,
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
      imageUrl: AppImages.imagesAvatar1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            transactionItems
                .map((e) => IntrinsicWidth(child: UserInfoListTile(user: e)))
                .toList(),
      ),
    );
  }
}