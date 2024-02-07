import 'package:admin_dashboard/features/home/presentaion/models/my_card_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});
  static List<CardModel> cardModelsList = [
    CardModel(
        bank: "BANQUE MISR",
        name: "Mahmoud Hamdy Fathy Elashwah",
        number: "5078 0867 0392 6324",
        date: "09/28 - 830"),
    CardModel(
        bank: "National Bank Of Egypt",
        name: "Mahmoud Hamdy Fathy Elashwah",
        number: "5078 0349 4944 4694",
        date: "11/28 - 605"),
    CardModel(
        bank: "Fawry",
        name: "Mahmoud Hamdy",
        number: "5078 0349 4944 4694",
        date: "09/28 - 605"),
  ];
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
        itemCount: cardModelsList.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return MyCard(cardModel: cardModelsList[index]);
        });
    // PageView.builder(
    //     itemCount: 3,
    //     scrollDirection: Axis.horizontal,
    //     physics: const BouncingScrollPhysics(),
    //     itemBuilder: (context, index) {
    //       return IntrinsicHeight(
    //         child: MyCard(
    //           cardModel: cardModelsList[index],
    //         ),
    //       );
    //     });
  }
}
