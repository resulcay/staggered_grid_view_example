import 'dart:math';

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int photoId = Random().nextInt(30) + 55;
    int sizeMultiplier = photoId % 7;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://picsum.photos/id/$photoId/300/${200 * sizeMultiplier}",
        scale: 1,
        fit: BoxFit.cover,
      ),
    );
  }
}
