import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.color});
  final String image;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60, maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.10000000149011612),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        SvgPicture.asset("assets/images/svgs/arrow-right.svg", color: color)
      ],
    );
  }
}
