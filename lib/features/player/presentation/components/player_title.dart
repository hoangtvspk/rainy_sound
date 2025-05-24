import 'package:flutter/material.dart';
import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import 'package:rainy_night/core/l10n/app_localizations.dart';

class PlayerTitle extends StatelessWidget {
  final RainySound sound;
  const PlayerTitle({super.key, required this.sound});
  @override
  Widget build(BuildContext context) {
    return Text(
      context.getLocalizedText(sound.title),
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.2,
      ),
      textAlign: TextAlign.center,
    );
  }
}
