import 'package:flutter/material.dart';
import 'package:sber_screen/widgets/cards_carousel_section/cards_carousel_section.dart';
import 'package:sber_screen/widgets/tariff_list_section/tariff_list_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      children: const [
        CardsCarousel(),
        TariffListSection(),
      ],
    );
  }
}
