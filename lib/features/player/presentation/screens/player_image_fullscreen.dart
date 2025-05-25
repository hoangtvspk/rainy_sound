import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../business_logic/player_bloc.dart';
import '../components/player_volume_slider.dart';
import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class PlayerImageFullscreen extends StatefulWidget {
  final RainySound sound;
  const PlayerImageFullscreen({super.key, required this.sound});

  @override
  State<PlayerImageFullscreen> createState() => _PlayerImageFullscreenState();
}

class _PlayerImageFullscreenState extends State<PlayerImageFullscreen> {
  bool _showControls = true;
  bool _wakelockEnabled = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    hideControls();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final isPlaying = context.read<PlayerBloc>().state.isPlaying;
    _updateWakelock(isPlaying);
  }

  void _updateWakelock(bool isPlaying) async {
    if (isPlaying && !_wakelockEnabled) {
      await WakelockPlus.enable();
      _wakelockEnabled = true;
    } else if (!isPlaying && _wakelockEnabled) {
      await WakelockPlus.disable();
      _wakelockEnabled = false;
    }
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    WakelockPlus.disable();
    super.dispose();
  }

  void hideControls() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    if (mounted) {
      setState(() {
        _showControls = false;
      });
    }
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PlayerBloc, PlayerState>(
      listenWhen: (prev, curr) => prev.isPlaying != curr.isPlaying,
      listener: (context, state) {
        _updateWakelock(state.isPlaying);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
          onTap: _toggleControls,
          child: Stack(
            children: [
              Center(
                child: Hero(
                  tag: "thumbnail",
                  child: Image.asset(
                    widget.sound.thumbnailUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              if (_showControls)
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.black.withValues(alpha: 0.4),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: PlayerVolumeSlider(
                            volume: context
                                .select((PlayerBloc bloc) => bloc.state.volume),
                            showFullscreenButton: false,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(CupertinoIcons.fullscreen_exit,
                              color: Colors.white, size: 20),
                          onPressed: () {
                            WakelockPlus.disable();
                            SystemChrome.setEnabledSystemUIMode(
                                SystemUiMode.edgeToEdge);
                            SystemChrome.setPreferredOrientations([
                              DeviceOrientation.portraitUp,
                              DeviceOrientation.portraitDown,
                            ]);
                            context.pop();
                          },
                          tooltip: 'Thu nhỏ',
                        ),
                      ],
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
