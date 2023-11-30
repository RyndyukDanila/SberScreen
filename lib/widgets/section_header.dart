import 'package:flutter/material.dart';
import 'package:sber_screen/static/text_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const SectionHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 14,
        right: 16,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.title,
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyles.subtitle,
          ),
        ],
      ),
    );
  }
}
