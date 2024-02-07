import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/features/home/presentaion/models/user_info_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/user_info_listile.dart';
import 'package:flutter/material.dart';

class LatestTransactionsListview extends StatelessWidget {
  const LatestTransactionsListview({super.key});
  static List<UserInfoModel> items = [
    UserInfoModel(
      title: "Mahmoud Hamdy",
      subtitle: "hmdy7486@gmail.com",
      image: Assets.user3,
    ),
    UserInfoModel(
      title: "Mahmoud Hamdy",
      subtitle: "hmdy7486@gmail.com",
      image: Assets.user4,
    ),
    UserInfoModel(
      title: "Mahmoud Hamdy",
      subtitle: "hmdy7486@gmail.com",
      image: Assets.user3,
    ),
    UserInfoModel(
      title: "Mahmoud Hamdy",
      subtitle: "hmdy7486@gmail.com",
      image: Assets.user3,
    ),
    UserInfoModel(
      title: "Mahmoud Hamdy",
      subtitle: "hmdy7486@gmail.com",
      image: Assets.user4,
    ),
    UserInfoModel(
      title: "Mahmoud Hamdy",
      subtitle: "hmdy7486@gmail.com",
      image: Assets.user3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      child: Row(
          children: items
              .map(
                (e) => IntrinsicWidth(
                  child: UserInfoListile(userInfoModel: e),
                ),
              )
              .toList()),
    );

    // SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //             child: UserInfoListile(userInfoModel: items[index]));
    //       }),
    // );
  }
}
