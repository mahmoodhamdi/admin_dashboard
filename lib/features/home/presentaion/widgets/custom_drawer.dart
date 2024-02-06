import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/features/home/presentaion/models/drawer_item_model.dart';
import 'package:admin_dashboard/features/home/presentaion/models/user_info_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/drawer_items_listview.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/inactive_drawer_item.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/user_info_listile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    UserInfoModel userInfoModel = UserInfoModel(
      title: 'Lekan Okeowo',
      subtitle: 'demo@gmail.com',
      image: Assets.user1,
    );
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListile(
              userInfoModel: userInfoModel,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemsLisrtview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system", image: Assets.setting)),
                InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account", image: Assets.logout)),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
