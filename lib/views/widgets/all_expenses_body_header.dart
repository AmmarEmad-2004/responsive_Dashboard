import 'package:dashboard_app/views/widgets/all_expenses_body_header_icon.dart';
import 'package:flutter/material.dart';

class AllExpensesBodyHeader extends StatelessWidget {
  const AllExpensesBodyHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AllExpensesBodyHeaderIcon(image: image),
        Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
