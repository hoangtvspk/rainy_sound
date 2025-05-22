import 'package:rainy_night/core/services/dio_service.dart';

class HomeService with DioService {
  Future getPosts() async {
    final response = await dioClient.get('/posts');
    return response.data;
  }
}
