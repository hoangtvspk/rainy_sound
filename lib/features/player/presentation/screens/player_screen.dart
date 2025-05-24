import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rainy_night/core/config/app_color.dart';
import 'package:rainy_night/core/l10n/app_localizations.dart';
import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import '../../business_logic/player_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:rainy_night/features/player/presentation/components/player_image.dart';
import 'package:rainy_night/features/player/presentation/components/player_title.dart';
import 'package:rainy_night/features/player/presentation/components/player_description.dart';
import 'package:rainy_night/features/player/presentation/components/player_play_pause_button.dart';
import 'package:rainy_night/features/player/presentation/components/player_volume_slider.dart';
import 'package:rainy_night/features/player/presentation/components/player_timer_bar.dart';

class PlayerScreen extends StatefulWidget {
  final int soundId;
  const PlayerScreen({super.key, required this.soundId});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PlayerBloc>().add(PlayerEvent.started(widget.soundId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        if (state.sound == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return Container(
          color: AppColor.grayLight,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 0.5, 1.0],
                colors: [
                  const Color(0xFF060D13).withValues(alpha: 0.5),
                  const Color(0xFF060D13).withValues(alpha: 0.8),
                  const Color(0xFF060D13).withValues(alpha: 0.9),
                ],
              ),
            ),
            child: SafeArea(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_drop_down),
                    onPressed: () => context.pop('/home'),
                    color: Colors.white.withValues(alpha: 0.7),
                    iconSize: 24,
                  ),
                  title: PlayerTitle(sound: state.sound!),
                ),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(child: PlayerImage(sound: state.sound!)),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          PlayerTitle(sound: state.sound!),
                          const SizedBox(height: 12),
                          PlayerDescription(sound: state.sound!),
                          const SizedBox(height: 24),
                          PlayerPlayPauseButton(isPlaying: state.isPlaying),
                          const SizedBox(height: 24),
                          PlayerVolumeSlider(volume: state.volume),
                          const SizedBox(height: 16),
                          PlayerTimerBar(state: state),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

String formatMinutesOption(BuildContext context, int minutes) {
  final l10n = context.l10n;
  if (minutes < 60) {
    return l10n.minutesOnly(minutes);
  } else {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    if (mins == 0) {
      return l10n.hoursOnly(hours);
    }
    return l10n.hoursAndMinutes(hours, mins);
  }
}

Future<Duration?> showTimerSheet(BuildContext context) async {
  final l10n = context.l10n;
  final List<int> minuteOptions = [15, 30, 60, 90, 120, 180, 240, 300];
  return await showCupertinoModalPopup<Duration>(
    context: context,
    builder: (context) => CupertinoActionSheet(
      title: Text(l10n.stopAudioIn,
          style: const TextStyle(fontWeight: FontWeight.bold)),
      actions: [
        ...minuteOptions.map((min) => CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context, Duration(minutes: min)),
              child: Text(formatMinutesOption(context, min)),
            )),
        CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context, null),
          isDestructiveAction: true,
          child: Text(l10n.cancel),
        ),
      ],
    ),
  );
}

String formatDuration(Duration? duration) {
  if (duration == null || duration.inMinutes == 0) return '';
  final totalMinutes = duration.inMinutes;
  if (totalMinutes < 60) {
    return '${totalMinutes}m';
  } else {
    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;
    if (minutes == 0) {
      return '${hours}h';
    }
    return '${hours}h${minutes}m';
  }
}
