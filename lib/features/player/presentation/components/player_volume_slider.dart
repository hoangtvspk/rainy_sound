import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../business_logic/player_bloc.dart';

class PlayerVolumeSlider extends StatelessWidget {
  final double volume;
  final bool? showFullscreenButton;
  const PlayerVolumeSlider(
      {super.key, required this.volume, this.showFullscreenButton = true});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          volume == 0 ? CupertinoIcons.volume_off : CupertinoIcons.volume_up,
          color: Colors.white.withOpacity(0.7),
          size: 24,
        ),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 3,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 18),
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white.withOpacity(0.2),
              thumbColor: Colors.white,
              overlayColor: Colors.white.withOpacity(0.2),
            ),
            child: Slider(
              value: volume,
              onChanged: (v) =>
                  context.read<PlayerBloc>().add(PlayerEvent.setVolume(v)),
              min: 0,
              max: 1,
            ),
          ),
        ),
        if (showFullscreenButton == true)
          IconButton(
            icon: const Icon(CupertinoIcons.fullscreen,
                color: Colors.white, size: 20),
            onPressed: () {
              final sound = context.read<PlayerBloc>().state.sound;
              if (sound != null) {
                context.push('/player/${sound.id}/fullscreen', extra: sound);
              }
            },
          ),
      ],
    );
  }
}
