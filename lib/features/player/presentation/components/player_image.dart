import 'package:flutter/material.dart';
import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';

class PlayerImage extends StatelessWidget {
  final RainySound sound;
  const PlayerImage({super.key, required this.sound});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Hero(
            tag: sound.thumbnailUrl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                sound.thumbnailUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
