import 'package:flutter/material.dart';
import 'package:sber_screen/widgets/tags_section/tag_item.dart';

class TagsList extends StatelessWidget {
  final List<String> tagsList;

  const TagsList({
    super.key,
    required this.tagsList,
  });

  @override
  Widget build(BuildContext context) {
    final List<TagItem> tags = tagsList.map((tag) => TagItem(tag: tag)).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        children: tags,
      ),
    );
  }
}
