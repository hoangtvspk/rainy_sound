import 'package:rainy_night/core/models/base_response/base_response.dart';
import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import '../services/home_service.dart';

class HomeRepository {
  final HomeService homeService;

  HomeRepository(this.homeService);

  Future<BaseResponse<List<RainySound>>> getRainySounds() async {
    try {
      final res = await homeService.getSounds();
      final List<dynamic> soundsJson = res['sounds'] as List<dynamic>;
      List<RainySound> result =
          soundsJson.map((e) => RainySound.fromJson(e)).toList();
      return BaseResponse(data: result, success: true);
    } catch (e) {
      return const BaseResponse(data: []);
    }
  }
}
