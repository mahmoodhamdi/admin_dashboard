import 'package:admin_dashboard/features/home/presentaion/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdminDashboard());
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Admin Dashboard',
        theme: ThemeData(fontFamily: "Montserrat"),
        home: const HomeView());
  }
}
