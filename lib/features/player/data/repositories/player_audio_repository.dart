import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import '../services/player_audio_service.dart';

class PlayerAudioRepository {
  final PlayerAudioService _audioService;
  PlayerAudioRepository({PlayerAudioService? audioService})
      : _audioService = audioService ?? PlayerAudioService();

  Future<RainySound?> getSoundById(int id) async {
    final rawList = await _audioService.getRawSounds();
    try {
      return rawList
          .map((e) => RainySound.fromJson(e))
          .firstWhere((s) => s.id == id);
    } catch (_) {
      return null;
    }
  }
}
