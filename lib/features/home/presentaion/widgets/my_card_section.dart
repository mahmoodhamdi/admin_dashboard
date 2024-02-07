import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/home/presentaion/models/my_card_model.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/dots_indicator.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/my_cards_pageview.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });
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
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      selectedIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("My Cards", style: AppStyles.font20SemiBold),
        const SizedBox(height: 20),
        MyCardsPageView(
          cardModelsList: MyCardSection.cardModelsList,
          pageController: pageController,
        ),
        const SizedBox(height: 19),
        DotsIndicator(
            dotsCount: MyCardSection.cardModelsList.length,
            selectedIndex: selectedIndex)
      ],
    );
  }
}
