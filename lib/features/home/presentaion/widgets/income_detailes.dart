import 'package:admin_dashboard/features/home/presentaion/models/details_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static List<DetailsModel> details = [
    DetailsModel(
      title: "Design service",
      leadingColor: const Color(0xFF208CC8),
      value: "40%",
    ),
    DetailsModel(
      title: "Design product",
      leadingColor: const Color(0xFF4EB7F2),
      value: "25%",
    ),
    DetailsModel(
      title: "Product Royalti",
      leadingColor: const Color(0xFF064061),
      value: "20%",
    ),
    DetailsModel(
      title: "Other",
      leadingColor: const Color(0xFFE2DECD),
      value: "15%",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: details.map((e) => DetailsItem(detailsModel: e)).toList());
  }
}
