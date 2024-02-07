import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/my_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // (420)/(215-8-19)
      aspectRatio: 2.23404255319,
      child: Container(
        decoration: const ShapeDecoration(
          image:
              DecorationImage(image: AssetImage(Assets.mask), fit: BoxFit.fill),
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
                cardModel.bank,
                style: AppStyles.font16Regular
                    .copyWith(color: const Color(0xFFFFFFFF)),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  cardModel.name,
                  maxLines: 1,
                  style: AppStyles.font20Medium,
                ),
              ),
              trailing: SvgPicture.asset(Assets.gallery)),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(cardModel.number, style: AppStyles.font24SemiBold),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  cardModel.date,
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
