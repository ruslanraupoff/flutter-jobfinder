import 'package:flutter/material.dart';

import 'constants.dart';
import 'models/company.dart';

class CompanyTab extends StatelessWidget {
  final Company? company;
  const CompanyTab({Key? key, this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 25.0),
        Text(
          "About Company",
          style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15.0),
        Text(
          company!.aboutCompany!,
          style: kSubtitleStyle.copyWith(
            fontWeight: FontWeight.w300,
            height: 1.5,
            color: const Color(0xFF5B5B5B),
          ),
        ),
      ],
    );
  }
}
