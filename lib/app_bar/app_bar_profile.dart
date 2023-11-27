import 'package:flutter/material.dart';
import 'package:sber_screen/app_bar/profile_image.dart';
import 'package:sber_screen/model/profile.dart';

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
        Divider(),
        ProfileImage(image: profile.image),
        Padding(
          padding: EdgeInsets.only(top: 36),
          child: Text(
            'Екатерина',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
