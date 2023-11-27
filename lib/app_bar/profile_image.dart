import 'package:flutter/material.dart';
import 'package:sber_screen/static/custom_colors.dart';

class ProfileImage extends StatelessWidget {
  final String image;

  const ProfileImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(38),
        ),
        shadows: const [
          BoxShadow(
            color: CustomColors.imageShadow,
            blurRadius: 24,
            offset: Offset(0, 16),
            spreadRadius: -16,
          )
        ],
      ),
    );
  }
}
