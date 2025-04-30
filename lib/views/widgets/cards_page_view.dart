import 'package:dashboard_app/views/widgets/custom_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CardsPageView extends StatelessWidget {
  const CardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      onPageChanged: (value) {},
      children: List.generate(3, (index) => CustomCard()),
    );
  }
}
