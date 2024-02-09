import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text('Income', style: AppStyles.font20SemiBold(context)),
      Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Color(0xFFf1f1f1), width: 1),
          )),
          child: Row(
            children: [
              Text('Monthly', style: AppStyles.font16Medium(context)),
              const SizedBox(width: 16),
              SvgPicture.asset(Assets.arrowDown)
            ],
          )),
    ]);
  }
}
