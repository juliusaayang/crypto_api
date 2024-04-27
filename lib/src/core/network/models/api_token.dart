import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_token.freezed.dart';
part 'api_token.g.dart';

@freezed
class ApiToken with _$ApiToken {
  const factory ApiToken({
    String? token,
  }) = _ApiToken;

  factory ApiToken.fromJson(Map<String, dynamic> json) => _$ApiTokenFromJson(json);

  const ApiToken._();
}
