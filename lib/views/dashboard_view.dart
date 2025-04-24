import 'package:dashboard_app/views/widgets/adaptive_layout.dart';
import 'package:dashboard_app/views/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/widgets.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => SizedBox(),
      tabletLayout: (context) => SizedBox(),
      desktopLayout: (context) => DashboardDesktopLayout(),
    );
  }
}
