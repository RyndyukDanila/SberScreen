import 'package:flutter/material.dart';
import 'package:sber_screen/model/tariff_content.dart';
import 'package:sber_screen/widgets/tariff_list_section/tariff_list_item.dart';

class TariffList extends StatelessWidget {
  final List<TariffContent> tariffsContent;

  const TariffList({
    super.key,
    required this.tariffsContent,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 192,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const Divider(
          indent: 68,
          thickness: 0.5,
          height: 0.5,
        ),
        padding: const EdgeInsets.only(
          bottom: 32,
        ),
        scrollDirection: Axis.vertical,
        itemCount: tariffsContent.length,
        itemBuilder: (BuildContext context, int index) {
          return TariffListItem(
            tariffContent: tariffsContent[index],
          );
        },
      ),
    );
  }
}
