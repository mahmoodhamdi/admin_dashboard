import 'package:admin_dashboard/features/home/presentaion/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/desktop_layout.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
