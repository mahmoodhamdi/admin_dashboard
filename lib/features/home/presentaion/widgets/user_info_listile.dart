import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListile extends StatelessWidget {
  const UserInfoListile({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.title,
          style: AppStyles.font16SemiBold(context),
        ),
        subtitle: Text(
          userInfoModel.subtitle,
          style: AppStyles.font12Regular(context),
        ),
      ),
    );
  }
}
