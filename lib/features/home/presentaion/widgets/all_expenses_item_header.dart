import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.10000000149011612),
            shape: const OvalBorder(),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Expanded(child: SizedBox()),
        SvgPicture.asset("assets/images/svgs/arrow-right.svg")
      ],
    );
  }
}
