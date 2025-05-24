import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class PlayerAudioService {
  final AudioPlayer _player = AudioPlayer();

  Future<String?> _assetToFile(String assetPath) async {
    try {
      final byteData = await rootBundle.load(assetPath);
      final tempDir = await getTemporaryDirectory();
      final filename = assetPath.split('/').last;
      final file = File('${tempDir.path}/$filename');
      await file.writeAsBytes(byteData.buffer.asUint8List());
      return file.path;
    } catch (e) {
      return null;
    }
  }

  Future<void> setSource(String url, {RainySound? sound}) async {
    Future<Uri?> getArtUri(RainySound? s) async {
      if (s == null) return null;
      final thumb = s.thumbnailUrl;
      if (thumb.startsWith('http')) {
        return Uri.parse(thumb);
      } else if (thumb.startsWith('assets/')) {
        final filePath = await _assetToFile(thumb);
        if (filePath != null) {
          return Uri.file(filePath);
        }
      }
      return null;
    }

    Uri? artUri;
    if (sound != null) {
      artUri = await getArtUri(sound);
    }

    if (url.startsWith('assets/')) {
      await _player.setAudioSource(
        AudioSource.asset(
          url,
          tag: sound != null
              ? MediaItem(
                  id: sound.id.toString(),
                  album: 'Rainy Night',
                  title: sound.title,
                  artUri: artUri,
                )
              : null,
        ),
      );
    } else {
      await _player.setAudioSource(
        AudioSource.uri(
          Uri.parse(url),
          tag: sound != null
              ? MediaItem(
                  id: sound.id.toString(),
                  album: 'Rainy Night',
                  title: sound.title,
                  artUri: artUri,
                )
              : null,
        ),
      );
    }
    await _player.setLoopMode(LoopMode.one);
  }

  Future<void> play() => _player.play();
  Future<void> pause() => _player.pause();
  Future<void> stop() => _player.stop();
  Future<void> setVolume(double v) => _player.setVolume(v);

  void dispose() => _player.dispose();

  // Lấy RainySound theo id từ file JSON
  Future<List<Map<String, dynamic>>> getRawSounds() async {
    final String jsonString =
        await rootBundle.loadString('assets/data/sounds.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    return (jsonData['sounds'] as List).cast<Map<String, dynamic>>();
  }
}
