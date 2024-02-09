import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quick Invoice", style: AppStyles.font20SemiBold(context)),
        const Spacer(),
        SvgPicture.asset(Assets.add)
      ],
    );
  }
}
