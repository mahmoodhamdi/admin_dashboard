import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/user_info_listile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          UserInfoListile(
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
            image: Assets.user1,
          ),
        ],
      ),
    );
  }
}
