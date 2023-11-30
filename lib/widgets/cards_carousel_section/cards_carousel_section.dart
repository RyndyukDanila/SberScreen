import 'package:flutter/material.dart';
import 'package:sber_screen/static/ui_text.dart';
import 'package:sber_screen/widgets/cards_carousel_section/carousel_scroll.dart';
import 'package:sber_screen/widgets/section_header.dart';

class CardsCarousel extends StatelessWidget {
  const CardsCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: UIText.connectedTitle,
          subtitle: UIText.connectedSubtitle,
        ),
        CarouselScroll(
          cardsContent: UIText.connectionsList,
        ),
      ],
    );
  }
}
