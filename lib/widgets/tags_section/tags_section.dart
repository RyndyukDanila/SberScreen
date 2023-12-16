import 'package:flutter/material.dart';
import 'package:sber_screen/static/ui_text.dart';
import 'package:sber_screen/widgets/section_header.dart';
import 'package:sber_screen/widgets/tags_section/tags_list.dart';

class TagsSection extends StatelessWidget {
  const TagsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: UIText.interestsTitle,
          subtitle: UIText.interestsSubtitle,
        ),
        TagsList(
          tagsList: UIText.interestsList,
        ),
      ],
    );
  }
}
