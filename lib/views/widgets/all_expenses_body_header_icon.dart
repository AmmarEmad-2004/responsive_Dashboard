import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesBodyHeaderIcon extends StatelessWidget {
  const AllExpensesBodyHeaderIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: ShapeDecoration(
        color: Color(0xfffafafa),
        shape: OvalBorder(),
      ),
      child: Center(child: SvgPicture.asset(image)),
    );
  }
}
