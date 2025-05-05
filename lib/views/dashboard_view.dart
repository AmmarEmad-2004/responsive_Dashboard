import 'package:dashboard_app/views/widgets/custom_drawer.dart';
import 'package:dashboard_app/views/widgets/tablet_layout.dart';
import 'package:dashboard_app/views/widgets/mobile_layout.dart';
import 'package:dashboard_app/views/widgets/adaptive_layout.dart';
import 'package:dashboard_app/views/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      drawer: width < 800 ? CustomDrawer() : null,
      appBar:
          width < 800
              ? AppBar(
                elevation: 0,
                backgroundColor: Color(0xfffafafa),
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              )
              : null,
      backgroundColor: Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
