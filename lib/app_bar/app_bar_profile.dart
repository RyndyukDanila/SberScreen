import 'package:flutter/material.dart';
import 'package:sber_screen/app_bar/profile_image.dart';
import 'package:sber_screen/model/profile.dart';
import 'package:sber_screen/static/text_styles.dart';

class AppBarProfile extends StatelessWidget {
  final Profile profile;

  const AppBarProfile({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ProfileImage(image: profile.image),
        const Padding(
          padding: EdgeInsets.only(top: 36, bottom: 14),
          child: Text(
            'Екатерина',
            style: TextStyles.profileName,
          ),
        ),
      ],
    );
  }
}
