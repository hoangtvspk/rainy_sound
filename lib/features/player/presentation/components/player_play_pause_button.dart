import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/player_bloc.dart';

class PlayerPlayPauseButton extends StatelessWidget {
  final bool isPlaying;
  const PlayerPlayPauseButton({super.key, required this.isPlaying});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(
          isPlaying
              ? CupertinoIcons.pause_solid
              : CupertinoIcons.play_arrow_solid,
          size: 48,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () {
          context.read<PlayerBloc>().add(
                isPlaying
                    ? const PlayerEvent.pause()
                    : const PlayerEvent.play(null),
              );
        },
      ),
    );
  }
}
