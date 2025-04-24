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
    return ListTile(
      leading: SvgPicture.asset(imageUrl),
      title: Text(title),
      subtitle: Text(subTitle),
    );
  }
}
