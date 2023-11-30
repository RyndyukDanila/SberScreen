import 'package:flutter/material.dart';
import 'package:sber_screen/static/custom_colors.dart';
import 'package:sber_screen/static/text_styles.dart';

class TagItem extends StatefulWidget {
  final String tag;

  const TagItem({
    super.key,
    required this.tag,
  });

  @override
  State<TagItem> createState() => _TagItemState();
}

class _TagItemState extends State<TagItem> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: selected,
      onSelected: (value) {
        setState(() {
          selected = value;
        });
      },
      label: Text(
        widget.tag,
        textAlign: TextAlign.center,
        style: TextStyles.tagText,
      ),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      selectedColor: CustomColors.indicator,
      disabledColor: CustomColors.tagBackground,
      backgroundColor: CustomColors.tagBackground,
      showCheckmark: false,
    );
  }
}
