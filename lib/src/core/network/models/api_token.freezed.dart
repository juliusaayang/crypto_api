// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiToken _$ApiTokenFromJson(Map<String, dynamic> json) {
  return _ApiToken.fromJson(json);
}

/// @nodoc
mixin _$ApiToken {
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTokenCopyWith<ApiToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTokenCopyWith<$Res> {
  factory $ApiTokenCopyWith(ApiToken value, $Res Function(ApiToken) then) =
      _$ApiTokenCopyWithImpl<$Res, ApiToken>;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class _$ApiTokenCopyWithImpl<$Res, $Val extends ApiToken>
    implements $ApiTokenCopyWith<$Res> {
  _$ApiTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiTokenImplCopyWith<$Res>
    implements $ApiTokenCopyWith<$Res> {
  factory _$$ApiTokenImplCopyWith(
          _$ApiTokenImpl value, $Res Function(_$ApiTokenImpl) then) =
      __$$ApiTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$ApiTokenImplCopyWithImpl<$Res>
    extends _$ApiTokenCopyWithImpl<$Res, _$ApiTokenImpl>
    implements _$$ApiTokenImplCopyWith<$Res> {
  __$$ApiTokenImplCopyWithImpl(
      _$ApiTokenImpl _value, $Res Function(_$ApiTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$ApiTokenImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiTokenImpl extends _ApiToken {
  const _$ApiTokenImpl({this.token}) : super._();

  factory _$ApiTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiTokenImplFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'ApiToken(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTokenImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiTokenImplCopyWith<_$ApiTokenImpl> get copyWith =>
      __$$ApiTokenImplCopyWithImpl<_$ApiTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiTokenImplToJson(
      this,
    );
  }
}

abstract class _ApiToken extends ApiToken {
  const factory _ApiToken({final String? token}) = _$ApiTokenImpl;
  const _ApiToken._() : super._();

  factory _ApiToken.fromJson(Map<String, dynamic> json) =
      _$ApiTokenImpl.fromJson;

  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$ApiTokenImplCopyWith<_$ApiTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
