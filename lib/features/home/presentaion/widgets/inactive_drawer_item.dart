import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: AppStyles.font16Medium(context),
      ),
      leading: SvgPicture.asset(drawerItemModel.image),
    );
  }
}
