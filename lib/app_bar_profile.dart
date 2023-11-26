import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget {
  const AppBarProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Container(
          width: 110,
          height: 110,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/user_image.png'),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x7A1D1D25),
                blurRadius: 24,
                offset: Offset(0, 16),
                spreadRadius: -16,
              )
            ],
          ),
        ),
        const Padding(
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
        )
      ],
    );
  }
}
