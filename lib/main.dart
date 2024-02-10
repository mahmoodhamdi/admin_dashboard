import 'package:admin_dashboard/features/home/presentaion/views/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const AdminDashboard(), // Wrap your app
      ),
    );

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Admin Dashboard',
        theme: ThemeData(fontFamily: "Montserrat"),
        home: const HomeView());
  }
}
