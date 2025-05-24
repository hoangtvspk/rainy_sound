import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rainy_night/core/l10n/app_localizations.dart';
import 'package:rainy_night/core/storage/shared_prefs.dart';
import '../../../player/business_logic/player_bloc.dart';

class MiniPlayerBar extends StatelessWidget {
  const MiniPlayerBar({super.key});

  @override
  Widget build(BuildContext context) {
    final AppPreferences _appPreferences = AppPreferences();
    return BlocBuilder<PlayerBloc, PlayerState>(
      buildWhen: (prev, curr) => prev.playingSound != curr.playingSound,
      builder: (context, state) {
        final sound = state.playingSound ?? _appPreferences.getPlayingSound();
        if (sound == null) return const SizedBox.shrink();

        return Material(
          color: Colors.black.withOpacity(0.85),
          child: InkWell(
            onTap: () {
              context.push('/player/${sound.id}');
            },
            child: Container(
              height: 90,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      sound.thumbnailUrl,
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.getLocalizedText(sound.title),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          context.l10n.playing,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 53, 132, 55),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                        ),
                        // Nếu sound không có artist, có thể bỏ dòng này hoặc thay bằng mô tả khác
                        // Text(
                        //   sound.artist ?? '',
                        //   style: TextStyle(
                        //     color: Colors.white.withOpacity(0.7),
                        //     fontSize: 13,
                        //   ),
                        //   maxLines: 1,
                        //   overflow: TextOverflow.ellipsis,
                        // ),
                      ],
                    ),
                  ),
                  // Có thể thêm hiệu ứng sóng nhạc hoặc icon đang phát ở đây nếu muốn
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
