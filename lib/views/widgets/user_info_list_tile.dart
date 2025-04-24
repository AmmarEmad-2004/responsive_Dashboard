import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });
  final String title, subTitle, imageUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(imageUrl),
        title: Text(title),
        titleTextStyle: AppStyles.textSemiBold16,
        subtitle: Text(subTitle),
        subtitleTextStyle: AppStyles.textRegular12,
      ),
    );
  }
}
