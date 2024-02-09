import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/details_model.dart';
import 'package:flutter/material.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({super.key, required this.detailsModel});
  final DetailsModel detailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        detailsModel.title,
        style: AppStyles.font16Regular(context),
      ),
      trailing: Text(
        detailsModel.value,
        style: AppStyles.font16Medium(context),
      ),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: const OvalBorder(), color: detailsModel.leadingColor),
      ),
    );
  }
}
