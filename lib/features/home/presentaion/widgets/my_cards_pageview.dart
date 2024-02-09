import 'package:admin_dashboard/features/home/presentaion/models/my_card_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView(
      {super.key, required this.cardModelsList, required this.pageController});
  final List<CardModel> cardModelsList;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
        controller: pageController,
        itemCount: cardModelsList.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (index) {},
        itemBuilder: (context, index) {
          return MyCard(cardModel: cardModelsList[index]);
        });
  }
}
