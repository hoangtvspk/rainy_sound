import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import 'package:rainy_night/core/models/status/status.dart';
import 'package:rainy_night/core/network/api_caller.dart';
import 'package:rainy_night/features/home/data/repositories/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/services/home_service.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> with ApiCaller {
  final HomeService homeService = HomeService();
  late HomeRepository repo;

  HomeBloc() : super(HomeState.initial()) {
    repo = HomeRepository(homeService);
    on<_Started>(_onStarted);
    on<_GetRainySounds>(_onGetRainySounds);
  }

  Future<void> _onStarted(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      statusLoadRainySounds: const Status.loading(),
    ));
    add(const _GetRainySounds());
  }

  void start() {
    add(const _Started());
  }

  Future<void> _onGetRainySounds(
      _GetRainySounds event, Emitter<HomeState> emit) async {
    emit(state.copyWith(statusLoadRainySounds: const Status.loading()));

    await apiCallSafety(
      () => repo.getRainySounds(),
      onStart: () async =>
          emit(state.copyWith(statusLoadRainySounds: const Status.loading())),
      onSuccess: (data) async {
        emit(state.copyWith(
          rainySounds: data ?? [],
          statusLoadRainySounds: const Status.success(),
        ));
      },
      onError: (error) async {
        emit(state.copyWith(
          statusLoadRainySounds: Status.failure(error.toString()),
        ));
      },
      onCompleted: () async =>
          emit(state.copyWith(statusLoadRainySounds: const Status.idle())),
      onFinally: () async =>
          emit(state.copyWith(statusLoadRainySounds: const Status.idle())),
    );
  }
}
