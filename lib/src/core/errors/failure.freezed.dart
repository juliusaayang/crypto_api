// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? exception) serverError,
    required TResult Function(String? message, Object? exception) expiredToken,
    required TResult Function() noInternet,
    required TResult Function(Object? exception) unknown,
    required TResult Function(Object? exception) connectionTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? exception)? serverError,
    TResult? Function(String? message, Object? exception)? expiredToken,
    TResult? Function()? noInternet,
    TResult? Function(Object? exception)? unknown,
    TResult? Function(Object? exception)? connectionTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? exception)? serverError,
    TResult Function(String? message, Object? exception)? expiredToken,
    TResult Function()? noInternet,
    TResult Function(Object? exception)? unknown,
    TResult Function(Object? exception)? connectionTimeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$ExpiredTokenFailure value) expiredToken,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$ConnectionTimeOutFailure value)
        connectionTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$ServerFailureImplCopyWith<$Res> {
  factory _$$$ServerFailureImplCopyWith(_$$ServerFailureImpl value,
          $Res Function(_$$ServerFailureImpl) then) =
      __$$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, Object? exception});
}

/// @nodoc
class __$$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$$ServerFailureImpl>
    implements _$$$ServerFailureImplCopyWith<$Res> {
  __$$$ServerFailureImplCopyWithImpl(
      _$$ServerFailureImpl _value, $Res Function(_$$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$$ServerFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$$ServerFailureImpl implements _$ServerFailure {
  const _$$ServerFailureImpl({this.message, this.exception});

  @override
  final String? message;
  @override
  final Object? exception;

  @override
  String toString() {
    return 'Failure.serverError(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ServerFailureImplCopyWith<_$$ServerFailureImpl> get copyWith =>
      __$$$ServerFailureImplCopyWithImpl<_$$ServerFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? exception) serverError,
    required TResult Function(String? message, Object? exception) expiredToken,
    required TResult Function() noInternet,
    required TResult Function(Object? exception) unknown,
    required TResult Function(Object? exception) connectionTimeOut,
  }) {
    return serverError(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? exception)? serverError,
    TResult? Function(String? message, Object? exception)? expiredToken,
    TResult? Function()? noInternet,
    TResult? Function(Object? exception)? unknown,
    TResult? Function(Object? exception)? connectionTimeOut,
  }) {
    return serverError?.call(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? exception)? serverError,
    TResult Function(String? message, Object? exception)? expiredToken,
    TResult Function()? noInternet,
    TResult Function(Object? exception)? unknown,
    TResult Function(Object? exception)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$ExpiredTokenFailure value) expiredToken,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$ConnectionTimeOutFailure value)
        connectionTimeOut,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _$ServerFailure implements Failure {
  const factory _$ServerFailure(
      {final String? message, final Object? exception}) = _$$ServerFailureImpl;

  String? get message;
  Object? get exception;
  @JsonKey(ignore: true)
  _$$$ServerFailureImplCopyWith<_$$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$ExpiredTokenFailureImplCopyWith<$Res> {
  factory _$$$ExpiredTokenFailureImplCopyWith(_$$ExpiredTokenFailureImpl value,
          $Res Function(_$$ExpiredTokenFailureImpl) then) =
      __$$$ExpiredTokenFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, Object? exception});
}

/// @nodoc
class __$$$ExpiredTokenFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$$ExpiredTokenFailureImpl>
    implements _$$$ExpiredTokenFailureImplCopyWith<$Res> {
  __$$$ExpiredTokenFailureImplCopyWithImpl(_$$ExpiredTokenFailureImpl _value,
      $Res Function(_$$ExpiredTokenFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$$ExpiredTokenFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$$ExpiredTokenFailureImpl implements _$ExpiredTokenFailure {
  const _$$ExpiredTokenFailureImpl({this.message, this.exception});

  @override
  final String? message;
  @override
  final Object? exception;

  @override
  String toString() {
    return 'Failure.expiredToken(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ExpiredTokenFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ExpiredTokenFailureImplCopyWith<_$$ExpiredTokenFailureImpl>
      get copyWith =>
          __$$$ExpiredTokenFailureImplCopyWithImpl<_$$ExpiredTokenFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? exception) serverError,
    required TResult Function(String? message, Object? exception) expiredToken,
    required TResult Function() noInternet,
    required TResult Function(Object? exception) unknown,
    required TResult Function(Object? exception) connectionTimeOut,
  }) {
    return expiredToken(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? exception)? serverError,
    TResult? Function(String? message, Object? exception)? expiredToken,
    TResult? Function()? noInternet,
    TResult? Function(Object? exception)? unknown,
    TResult? Function(Object? exception)? connectionTimeOut,
  }) {
    return expiredToken?.call(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? exception)? serverError,
    TResult Function(String? message, Object? exception)? expiredToken,
    TResult Function()? noInternet,
    TResult Function(Object? exception)? unknown,
    TResult Function(Object? exception)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (expiredToken != null) {
      return expiredToken(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$ExpiredTokenFailure value) expiredToken,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$ConnectionTimeOutFailure value)
        connectionTimeOut,
  }) {
    return expiredToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
  }) {
    return expiredToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (expiredToken != null) {
      return expiredToken(this);
    }
    return orElse();
  }
}

abstract class _$ExpiredTokenFailure implements Failure {
  const factory _$ExpiredTokenFailure(
      {final String? message,
      final Object? exception}) = _$$ExpiredTokenFailureImpl;

  String? get message;
  Object? get exception;
  @JsonKey(ignore: true)
  _$$$ExpiredTokenFailureImplCopyWith<_$$ExpiredTokenFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$NoInternetFailureImplCopyWith<$Res> {
  factory _$$$NoInternetFailureImplCopyWith(_$$NoInternetFailureImpl value,
          $Res Function(_$$NoInternetFailureImpl) then) =
      __$$$NoInternetFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$NoInternetFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$$NoInternetFailureImpl>
    implements _$$$NoInternetFailureImplCopyWith<$Res> {
  __$$$NoInternetFailureImplCopyWithImpl(_$$NoInternetFailureImpl _value,
      $Res Function(_$$NoInternetFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$NoInternetFailureImpl implements _$NoInternetFailure {
  const _$$NoInternetFailureImpl();

  @override
  String toString() {
    return 'Failure.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$NoInternetFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? exception) serverError,
    required TResult Function(String? message, Object? exception) expiredToken,
    required TResult Function() noInternet,
    required TResult Function(Object? exception) unknown,
    required TResult Function(Object? exception) connectionTimeOut,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? exception)? serverError,
    TResult? Function(String? message, Object? exception)? expiredToken,
    TResult? Function()? noInternet,
    TResult? Function(Object? exception)? unknown,
    TResult? Function(Object? exception)? connectionTimeOut,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? exception)? serverError,
    TResult Function(String? message, Object? exception)? expiredToken,
    TResult Function()? noInternet,
    TResult Function(Object? exception)? unknown,
    TResult Function(Object? exception)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$ExpiredTokenFailure value) expiredToken,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$ConnectionTimeOutFailure value)
        connectionTimeOut,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$NoInternetFailure implements Failure {
  const factory _$NoInternetFailure() = _$$NoInternetFailureImpl;
}

/// @nodoc
abstract class _$$$UnknownFailureImplCopyWith<$Res> {
  factory _$$$UnknownFailureImplCopyWith(_$$UnknownFailureImpl value,
          $Res Function(_$$UnknownFailureImpl) then) =
      __$$$UnknownFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? exception});
}

/// @nodoc
class __$$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$$UnknownFailureImpl>
    implements _$$$UnknownFailureImplCopyWith<$Res> {
  __$$$UnknownFailureImplCopyWithImpl(
      _$$UnknownFailureImpl _value, $Res Function(_$$UnknownFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$$UnknownFailureImpl(
      exception: freezed == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$$UnknownFailureImpl implements _$UnknownFailure {
  const _$$UnknownFailureImpl({this.exception});

  @override
  final Object? exception;

  @override
  String toString() {
    return 'Failure.unknown(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UnknownFailureImpl &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$UnknownFailureImplCopyWith<_$$UnknownFailureImpl> get copyWith =>
      __$$$UnknownFailureImplCopyWithImpl<_$$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? exception) serverError,
    required TResult Function(String? message, Object? exception) expiredToken,
    required TResult Function() noInternet,
    required TResult Function(Object? exception) unknown,
    required TResult Function(Object? exception) connectionTimeOut,
  }) {
    return unknown(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? exception)? serverError,
    TResult? Function(String? message, Object? exception)? expiredToken,
    TResult? Function()? noInternet,
    TResult? Function(Object? exception)? unknown,
    TResult? Function(Object? exception)? connectionTimeOut,
  }) {
    return unknown?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? exception)? serverError,
    TResult Function(String? message, Object? exception)? expiredToken,
    TResult Function()? noInternet,
    TResult Function(Object? exception)? unknown,
    TResult Function(Object? exception)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$ExpiredTokenFailure value) expiredToken,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$ConnectionTimeOutFailure value)
        connectionTimeOut,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$UnknownFailure implements Failure {
  const factory _$UnknownFailure({final Object? exception}) =
      _$$UnknownFailureImpl;

  Object? get exception;
  @JsonKey(ignore: true)
  _$$$UnknownFailureImplCopyWith<_$$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$ConnectionTimeOutFailureImplCopyWith<$Res> {
  factory _$$$ConnectionTimeOutFailureImplCopyWith(
          _$$ConnectionTimeOutFailureImpl value,
          $Res Function(_$$ConnectionTimeOutFailureImpl) then) =
      __$$$ConnectionTimeOutFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? exception});
}

/// @nodoc
class __$$$ConnectionTimeOutFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$$ConnectionTimeOutFailureImpl>
    implements _$$$ConnectionTimeOutFailureImplCopyWith<$Res> {
  __$$$ConnectionTimeOutFailureImplCopyWithImpl(
      _$$ConnectionTimeOutFailureImpl _value,
      $Res Function(_$$ConnectionTimeOutFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$$ConnectionTimeOutFailureImpl(
      exception: freezed == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$$ConnectionTimeOutFailureImpl implements _$ConnectionTimeOutFailure {
  const _$$ConnectionTimeOutFailureImpl({this.exception});

  @override
  final Object? exception;

  @override
  String toString() {
    return 'Failure.connectionTimeOut(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ConnectionTimeOutFailureImpl &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ConnectionTimeOutFailureImplCopyWith<_$$ConnectionTimeOutFailureImpl>
      get copyWith => __$$$ConnectionTimeOutFailureImplCopyWithImpl<
          _$$ConnectionTimeOutFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? exception) serverError,
    required TResult Function(String? message, Object? exception) expiredToken,
    required TResult Function() noInternet,
    required TResult Function(Object? exception) unknown,
    required TResult Function(Object? exception) connectionTimeOut,
  }) {
    return connectionTimeOut(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? exception)? serverError,
    TResult? Function(String? message, Object? exception)? expiredToken,
    TResult? Function()? noInternet,
    TResult? Function(Object? exception)? unknown,
    TResult? Function(Object? exception)? connectionTimeOut,
  }) {
    return connectionTimeOut?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? exception)? serverError,
    TResult Function(String? message, Object? exception)? expiredToken,
    TResult Function()? noInternet,
    TResult Function(Object? exception)? unknown,
    TResult Function(Object? exception)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (connectionTimeOut != null) {
      return connectionTimeOut(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$ExpiredTokenFailure value) expiredToken,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$ConnectionTimeOutFailure value)
        connectionTimeOut,
  }) {
    return connectionTimeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
  }) {
    return connectionTimeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$ExpiredTokenFailure value)? expiredToken,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$ConnectionTimeOutFailure value)? connectionTimeOut,
    required TResult orElse(),
  }) {
    if (connectionTimeOut != null) {
      return connectionTimeOut(this);
    }
    return orElse();
  }
}

abstract class _$ConnectionTimeOutFailure implements Failure {
  const factory _$ConnectionTimeOutFailure({final Object? exception}) =
      _$$ConnectionTimeOutFailureImpl;

  Object? get exception;
  @JsonKey(ignore: true)
  _$$$ConnectionTimeOutFailureImplCopyWith<_$$ConnectionTimeOutFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
