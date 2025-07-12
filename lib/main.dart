import 'package:dashboard/View/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      home: Dashboardview(),
    );
  }
}
