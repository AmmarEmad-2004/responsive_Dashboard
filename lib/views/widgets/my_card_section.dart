import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/views/widgets/cards_page_view.dart';
import 'package:dashboard_app/views/widgets/dots_indicator.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.textSemiBold20(context)),
        SizedBox(height: 20),
        CardsPageView(pageController: pageController),
        SizedBox(height: 20),
        DotsIndicator(currentIndex: currentIndex),
      ],
    );
  }
}
