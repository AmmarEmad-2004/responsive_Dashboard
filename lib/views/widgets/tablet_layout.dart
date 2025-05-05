import 'package:dashboard_app/views/widgets/custom_drawer.dart';
import 'package:dashboard_app/views/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}


