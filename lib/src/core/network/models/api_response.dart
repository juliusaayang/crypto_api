import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true, explicitToJson: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required T data,
    String? message,
    List<String>? errors,
    String? error,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$ApiResponseFromJson(json, fromJsonT);
  }

  const ApiResponse._();
}
