import 'package:flutter/material.dart';
import 'package:sber_screen/static/ui_text.dart';
import 'package:sber_screen/widgets/section_header.dart';
import 'package:sber_screen/widgets/tariff_list_section/tariff_list.dart';

class TariffListSection extends StatelessWidget {
  const TariffListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: UIText.tariffTitle,
          subtitle: UIText.tariffSubtitle,
        ),
        TariffList(
          tariffsContent: UIText.tariffList,
        ),
      ],
    );
  }
}
