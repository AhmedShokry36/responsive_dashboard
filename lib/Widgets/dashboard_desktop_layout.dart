import 'package:dashboard/Widgets/all_expenses.dart';
import 'package:dashboard/Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(children: [Expanded(child: AllExpenses())]),
        ),
      ],
    );
  }
}
