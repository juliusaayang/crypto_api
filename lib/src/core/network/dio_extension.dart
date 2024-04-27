import 'package:dio/dio.dart';

extension DioExtension on Dio {
  Dio copyWith({
    String? baseUrl,
  }) {
    final newOptions = options.copyWith(
      baseUrl: baseUrl,
    );
    return Dio(newOptions)
      ..transformer = transformer
      ..httpClientAdapter = httpClientAdapter
      ..interceptors.addAll(interceptors);
  }
}
