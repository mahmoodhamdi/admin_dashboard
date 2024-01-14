import 'package:admin_dashboard/features/home/presentaion/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout(),
         
      ),
    );
  }
}
