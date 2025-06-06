import 'package:rainy_night/core/models/base_response/base_response.dart';

mixin ApiCaller {
  /// Call api safety with error handling.
  /// Required:
  /// - dioApi: call async dio function
  /// Optional:
  /// - onStart: the function executed before api, can be null
  /// - onSuccess: the function executed on api completed with success, can be null
  /// - onError: the function executed in case api crashed, can be null
  /// - onCompleted: the function executed after api completed or before crashing, can be null
  /// - onFinally: the function executed end of function, can be null
  Future<void> apiCallSafety<T>(
    Future<BaseResponse<T>> Function() apiCaller, {
    required Future<void> Function() onStart,
    required Future<void> Function() onCompleted,
    required Future<void> Function(T? res) onSuccess,
    required Future<void> Function(dynamic error) onError,
    required Future<void> Function() onFinally,
  }) async {
    try {
      /// On start, use for show loading

      await onStart.call();

      // await Future.delayed(Duration(milliseconds: 100));

      /// Execute api
      final result = await apiCaller();

      await onCompleted.call();

      if (result.success) {
        /// On completed, use for hide loading
        await onSuccess.call(result.data);
      } else {
        await onError.call(result.message);
      }
    } catch (error) {
      await onCompleted.call();

      /// In case error:

      /// On inline error
      await onError.call(error);

      return;
    } finally {
      /// Call finally function
      await onFinally.call();
    }
  }
}
