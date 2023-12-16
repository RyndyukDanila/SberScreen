import 'package:flutter/material.dart';
import 'package:sber_screen/model/tariff_content.dart';
import 'package:sber_screen/static/custom_colors.dart';
import 'package:sber_screen/static/text_styles.dart';

class TariffListItem extends StatelessWidget {
  final TariffContent tariffContent;

  const TariffListItem({
    super.key,
    required this.tariffContent,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Image(image: tariffContent.image),
      title: Text(
        tariffContent.title,
        style: TextStyles.listItemPrimary,
        maxLines: 2,
      ),
      subtitle: tariffContent.subtitle == null
          ? null
          : Text(
              tariffContent.subtitle!,
              style: TextStyles.listItemSecondary,
            ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 24,
        color: CustomColors.secondary,
      ),
    );
  }
}
