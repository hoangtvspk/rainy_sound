import 'package:flutter/material.dart';
import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import 'package:rainy_night/core/l10n/app_localizations.dart';

class PlayerDescription extends StatelessWidget {
  final RainySound sound;
  const PlayerDescription({super.key, required this.sound});
  @override
  Widget build(BuildContext context) {
    return Text(
      context.getLocalizedText(sound.description),
      style: TextStyle(
        fontSize: 15,
        color: Colors.white.withOpacity(0.7),
        height: 1.4,
      ),
      textAlign: TextAlign.center,
    );
  }
}
