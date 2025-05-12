import 'package:dashboard_app/utils/app_images.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff5fbef3),
          borderRadius: BorderRadius.circular(12),

          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.imagesMaskgroup),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Name card',
                style: AppStyles.textRegular16(context).copyWith(color: Colors.white),
              ),
              subtitle: Text('Syah Bandi', style: AppStyles.textMedium20(context)),
              trailing: SvgPicture.asset(AppImages.imagesGallery),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.textSemiBold24(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '22/7/2004',
                    style: AppStyles.textRegular16(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
