import 'package:flutter/material.dart';
import 'package:sber_screen/model/card_content.dart';
import 'package:sber_screen/static/custom_colors.dart';
import 'package:sber_screen/static/text_styles.dart';

class CarouselCard extends StatelessWidget {
  final CardContent cardContent;

  const CarouselCard({
    super.key,
    required this.cardContent,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: CustomColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: CustomColors.cardShadowPrimary,
            blurRadius: 14,
            offset: Offset(0, 8),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: CustomColors.cardShadowSecondary,
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        width: 216,
        height: 130,
        padding: const EdgeInsets.only(
          left: 16,
          top: 14,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(image: cardContent.image),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  cardContent.name,
                  style: TextStyles.cardName,
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardContent.title,
                  style: TextStyles.cardTitle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  cardContent.subtitle,
                  style: TextStyles.cardSubtitle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
