// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:admin_dashboard/features/home/presentaion/models/drawer_item_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/active_drawer_item.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/inactive_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.drawerItemModel,
    required this.isActive,
  }) : super(key: key);
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InactiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
