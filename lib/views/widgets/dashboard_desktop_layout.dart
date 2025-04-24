import 'package:dashboard_app/views/widgets/custom_drawer.dart';
import 'package:flutter/widgets.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(child: CustomDrawer())]);
  }
}
