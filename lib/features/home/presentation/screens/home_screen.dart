import 'package:rainy_night/core/storage/shared_prefs.dart';
import 'package:rainy_night/features/home/presentation/widgets/home_skeleton.dart';
import 'package:rainy_night/features/home/presentation/widgets/rainy_sound_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rainy_night/features/home/presentation/widgets/mini_player_bar.dart';
import 'package:rainy_night/features/player/business_logic/player_bloc.dart';

import '../../../../core/config/app_color.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../business_logic/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String token = '';
  late final HomeBloc _homeBloc;
  final AppPreferences _appPreferences = AppPreferences();

  @override
  void initState() {
    super.initState();
    _homeBloc = HomeBloc()..add(const HomeEvent.started());
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, playerState) {
        final hasMiniPlayer =
            (playerState.playingSound ?? _appPreferences.getPlayingSound()) !=
                null;
        return Scaffold(
          backgroundColor: AppColor.grayLight,
          body: BlocProvider(
            create: (context) => _homeBloc,
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
                  bottom: !hasMiniPlayer,
                  child: Stack(
                    children: [
                      CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            backgroundColor: Colors.transparent,
                            floating: true,
                            centerTitle: false,
                            title: Row(
                              children: [
                                Image.asset(
                                  'assets/images/cloud.png',
                                  width: 30,
                                ),
                                const Text(
                                  'Rainy Night',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Banner Section
                          SliverToBoxAdapter(
                            child: Container(
                              height: 200,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    const Color(0xFF2C2C2C)
                                        .withValues(alpha: 0.8),
                                    const Color(0xFF1A1A1A)
                                        .withValues(alpha: 0.6),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF000000)
                                        .withValues(alpha: 0.3),
                                    blurRadius: 20,
                                    offset: const Offset(0, 10),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  // Background Pattern
                                  Positioned.fill(
                                    child: Opacity(
                                      opacity: 0.5,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage(
                                              'assets/images/rain_pattern.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Content
                                  Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          context.l10n.findPerfectSound,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        const Text(
                                          'Sleep Sound',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        BlocBuilder<HomeBloc, HomeState>(
                                          builder: (context, state) {
                                            return GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<PlayerBloc>()
                                                      .add(PlayerEvent.play(
                                                          state.rainySounds[0]
                                                              .id));
                                                  context.push(
                                                      '/player/${state.rainySounds[0].id}');
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 16,
                                                    vertical: 8,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withValues(alpha: 0.2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Icon(
                                                        Icons.headphones,
                                                        color: Colors.white,
                                                        size: 20,
                                                      ),
                                                      const SizedBox(width: 8),
                                                      Text(
                                                        context.l10n.tapToPlay,
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ));
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Sound List
                          SliverToBoxAdapter(
                            child: BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                return state.statusLoadRainySounds.maybeWhen(
                                  loading: () => const HomeSkeleton(
                                    title: 'Loading sounds...',
                                    key: ValueKey('loading_posts'),
                                  ),
                                  failure: (message) => Center(
                                    child: Text(
                                      'Failed to load sounds',
                                      style: TextStyle(
                                        color:
                                            Colors.white.withValues(alpha: 0.7),
                                      ),
                                    ),
                                  ),
                                  orElse: () {
                                    final sounds = state.rainySounds;
                                    return ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: sounds.length +
                                          (hasMiniPlayer ? 1 : 0),
                                      itemBuilder: (context, index) {
                                        if (index == sounds.length &&
                                            hasMiniPlayer) {
                                          // Add space for MiniPlayerBar
                                          return const SizedBox(height: 72);
                                        }
                                        final sound = sounds[index];
                                        return RainySoundItem(
                                          sound: sound,
                                          onTap: () {
                                            context.push('/player/${sound.id}');
                                          },
                                          onPlay: () {
                                            context.read<PlayerBloc>().add(
                                                PlayerEvent.play(sound.id));
                                            context.push('/player/${sound.id}');
                                          },
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      // MiniPlayerBar overlay
                      const Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: MiniPlayerBar(),
                      ),
                    ],
                  ),
                )),
          ),
        );
      },
    );
  }
}
