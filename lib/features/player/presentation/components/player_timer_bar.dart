import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/player_bloc.dart';
import '../screens/player_screen.dart';

class PlayerTimerBar extends StatelessWidget {
  final PlayerState state;
  const PlayerTimerBar({super.key, required this.state});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: GestureDetector(
        onTap: () async {
          final duration = await showTimerSheet(context);
          if (duration != null && context.mounted) {
            context.read<PlayerBloc>().add(PlayerEvent.setTimer(duration));
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (state.isTimerActive) ...[
                Icon(CupertinoIcons.timer,
                    color: Colors.white.withValues(alpha: 0.7), size: 20),
                const SizedBox(width: 8),
                Text(
                  formatDuration(state.timer),
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.7),
                    fontSize: 15,
                  ),
                ),
              ] else ...[
                Icon(CupertinoIcons.timer,
                    color: Colors.white.withValues(alpha: 0.3), size: 20),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
