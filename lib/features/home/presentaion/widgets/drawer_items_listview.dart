import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/features/home/presentaion/models/drawer_item_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsLisrtview extends StatefulWidget {
  const DrawerItemsLisrtview({
    super.key,
  });

  @override
  State<DrawerItemsLisrtview> createState() => _DrawerItemsLisrtviewState();
}

class _DrawerItemsLisrtviewState extends State<DrawerItemsLisrtview> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItem = [
    DrawerItemModel(
      title: "Dashboard",
      image: Assets.dashboard,
    ),
    DrawerItemModel(
      title: "My Transaction",
      image: Assets.transaction,
    ),
    DrawerItemModel(
      title: "Statistics",
      image: Assets.statictis,
    ),
    DrawerItemModel(
      title: "Wallet Account",
      image: Assets.wallet,
    ),
    DrawerItemModel(
      title: "My Investments",
      image: Assets.investments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItem.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
                isActive: activeIndex == index,
                drawerItemModel: drawerItem[index]),
          ),
        );
      },
    );
  }
}
