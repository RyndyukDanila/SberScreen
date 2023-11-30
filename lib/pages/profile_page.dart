import 'package:flutter/material.dart';
import 'package:sber_screen/widgets/cards_carousel/cards_carousel.dart';

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
      ],
    );
  }
}
