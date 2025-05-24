part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<RainySound> rainySounds,
    @Default(Status.idle()) Status statusLoadRainySounds,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
