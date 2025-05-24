import 'package:flutter/material.dart';
import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import 'package:rainy_night/core/config/app_color.dart';
import 'package:rainy_night/core/l10n/app_localizations.dart';

class RainySoundItem extends StatelessWidget {
  final RainySound sound;
  final VoidCallback onTap;
  final VoidCallback onPlay;
  final bool isPlaying;

  const RainySoundItem({
    super.key,
    required this.sound,
    required this.onTap,
    required this.onPlay,
    this.isPlaying = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColor.grayLight.withValues(alpha: 0.1),
                AppColor.grayLight.withValues(alpha: 0.05),
              ],
            ),
            border: Border.all(
              color: AppColor.grayLight.withValues(alpha: 0.1),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              // Thumbnail
              ClipRRect(
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(16)),
                child: Image.asset(
                  sound.thumbnailUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.getLocalizedText(sound.title),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      context.getLocalizedText(sound.description),
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.7),
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              // Play/Pause Button
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButton(
                  onPressed: onPlay,
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isPlaying
                          ? AppColor.primary.withValues(alpha: 0.2)
                          : Colors.white.withValues(alpha: 0.1),
                    ),
                    child: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: isPlaying ? AppColor.primary : Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
