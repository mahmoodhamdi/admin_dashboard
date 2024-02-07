import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // (420)/(215-8-19)
      aspectRatio: 2.23404255319,
      child: Container(
        decoration: const ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.mask),
          ),
          color: Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
              contentPadding: const EdgeInsets.only(right: 41.5, left: 31),
              minVerticalPadding: 16,
              title: Text(
                "Name Card",
                style: AppStyles.font16Regular
                    .copyWith(color: const Color(0xFFFFFFFF)),
              ),
              subtitle: const Text(
                "Mahmoud Hamdy",
                style: AppStyles.font20Medium,
              ),
              trailing: SvgPicture.asset(Assets.gallery)),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text("0918 8124 0042 8129",
                    style: AppStyles.font24SemiBold),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "12/20 - 124",
                  style: AppStyles.font16Regular
                      .copyWith(color: const Color(0xFFFFFFFF)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 29,
          )
        ]),
      ),
    );
  }
}
