import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesBodyHeaderIcon extends StatelessWidget {
  const AllExpensesBodyHeaderIcon({super.key, required this.image,  this.color,  this.backgroundColor});
  final String image;
  final Color? color,backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: ShapeDecoration(
        color:backgroundColor?? Color(0xfffafafa),
        shape: OvalBorder(),
      ),
      child: Center(
        child: SvgPicture.asset(
          image,
          colorFilter: ColorFilter.mode(color??Color(0xff4EB7F2), BlendMode.srcIn),
        ),
      ),
    );
  }
}
