import 'package:admin_dashboard/features/home/presentaion/widgets/background_container.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_header.dart';
import 'package:admin_dashboard/features/home/presentaion/widgets/income_section_body.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
      
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(child: IncomeSectionBody()),
        ],
      ),
    );
  }
}
