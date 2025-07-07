import 'package:dashboard/Widgets/adaptive_layout_widget.dart';
import 'package:dashboard/Widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class Dashboardview extends StatelessWidget {
  const Dashboardview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        disktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
