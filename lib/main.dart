import 'package:dashboard/View/DashboardView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dashboard());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.amber,
      home: Dashboardview(),
    );
  }
}
