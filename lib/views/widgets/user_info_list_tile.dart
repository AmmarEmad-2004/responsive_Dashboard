import 'package:dashboard_app/models/user_info_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key, required this.user,
    
  });
  final UserInfoModel user;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(user.imageUrl),
        title: Text(user.title),
        titleTextStyle: AppStyles.textSemiBold16,
        subtitle: Text(user.subTitle),
        subtitleTextStyle: AppStyles.textRegular12,
      ),
    );
  }
}
