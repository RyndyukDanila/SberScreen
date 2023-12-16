import 'package:flutter/src/painting/image_provider.dart';

class CardContent {
  final String name;
  final String title;
  final String subtitle;
  final ImageProvider<Object> image;

  CardContent({
    required this.name,
    required this.title,
    required this.subtitle,
    required this.image,
  });
}
