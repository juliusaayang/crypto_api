// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CryptoException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Exception? exception) server,
    required TResult Function() noInternet,
    required TResult Function(Exception? exception) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Exception? exception)? server,
    TResult? Function()? noInternet,
    TResult? Function(Exception? exception)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Exception? exception)? server,
    TResult Function()? noInternet,
    TResult Function(Exception? exception)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CryptoServerException value) server,
    required TResult Function(_$CryptoInternetException value) noInternet,
    required TResult Function(_$CryptoUnknownException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CryptoServerException value)? server,
    TResult? Function(_$CryptoInternetException value)? noInternet,
    TResult? Function(_$CryptoUnknownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CryptoServerException value)? server,
    TResult Function(_$CryptoInternetException value)? noInternet,
    TResult Function(_$CryptoUnknownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoExceptionCopyWith<$Res> {
  factory $CryptoExceptionCopyWith(
          CryptoException value, $Res Function(CryptoException) then) =
      _$CryptoExceptionCopyWithImpl<$Res, CryptoException>;
}

/// @nodoc
class _$CryptoExceptionCopyWithImpl<$Res, $Val extends CryptoException>
    implements $CryptoExceptionCopyWith<$Res> {
  _$CryptoExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$CryptoServerExceptionImplCopyWith<$Res> {
  factory _$$$CryptoServerExceptionImplCopyWith(
          _$$CryptoServerExceptionImpl value,
          $Res Function(_$$CryptoServerExceptionImpl) then) =
      __$$$CryptoServerExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, Exception? exception});
}

/// @nodoc
class __$$$CryptoServerExceptionImplCopyWithImpl<$Res>
    extends _$CryptoExceptionCopyWithImpl<$Res, _$$CryptoServerExceptionImpl>
    implements _$$$CryptoServerExceptionImplCopyWith<$Res> {
  __$$$CryptoServerExceptionImplCopyWithImpl(
      _$$CryptoServerExceptionImpl _value,
      $Res Function(_$$CryptoServerExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$$CryptoServerExceptionImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$$CryptoServerExceptionImpl implements _$CryptoServerException {
  const _$$CryptoServerExceptionImpl({this.message, this.exception});

  @override
  final String? message;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'CryptoException.server(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$CryptoServerExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$CryptoServerExceptionImplCopyWith<_$$CryptoServerExceptionImpl>
      get copyWith => __$$$CryptoServerExceptionImplCopyWithImpl<
          _$$CryptoServerExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Exception? exception) server,
    required TResult Function() noInternet,
    required TResult Function(Exception? exception) unknown,
  }) {
    return server(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Exception? exception)? server,
    TResult? Function()? noInternet,
    TResult? Function(Exception? exception)? unknown,
  }) {
    return server?.call(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Exception? exception)? server,
    TResult Function()? noInternet,
    TResult Function(Exception? exception)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CryptoServerException value) server,
    required TResult Function(_$CryptoInternetException value) noInternet,
    required TResult Function(_$CryptoUnknownException value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CryptoServerException value)? server,
    TResult? Function(_$CryptoInternetException value)? noInternet,
    TResult? Function(_$CryptoUnknownException value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CryptoServerException value)? server,
    TResult Function(_$CryptoInternetException value)? noInternet,
    TResult Function(_$CryptoUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _$CryptoServerException implements CryptoException {
  const factory _$CryptoServerException(
      {final String? message,
      final Exception? exception}) = _$$CryptoServerExceptionImpl;

  String? get message;
  Exception? get exception;
  @JsonKey(ignore: true)
  _$$$CryptoServerExceptionImplCopyWith<_$$CryptoServerExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$CryptoInternetExceptionImplCopyWith<$Res> {
  factory _$$$CryptoInternetExceptionImplCopyWith(
          _$$CryptoInternetExceptionImpl value,
          $Res Function(_$$CryptoInternetExceptionImpl) then) =
      __$$$CryptoInternetExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$CryptoInternetExceptionImplCopyWithImpl<$Res>
    extends _$CryptoExceptionCopyWithImpl<$Res, _$$CryptoInternetExceptionImpl>
    implements _$$$CryptoInternetExceptionImplCopyWith<$Res> {
  __$$$CryptoInternetExceptionImplCopyWithImpl(
      _$$CryptoInternetExceptionImpl _value,
      $Res Function(_$$CryptoInternetExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$CryptoInternetExceptionImpl implements _$CryptoInternetException {
  const _$$CryptoInternetExceptionImpl();

  @override
  String toString() {
    return 'CryptoException.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$CryptoInternetExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Exception? exception) server,
    required TResult Function() noInternet,
    required TResult Function(Exception? exception) unknown,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Exception? exception)? server,
    TResult? Function()? noInternet,
    TResult? Function(Exception? exception)? unknown,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Exception? exception)? server,
    TResult Function()? noInternet,
    TResult Function(Exception? exception)? unknown,
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
    required TResult Function(_$CryptoServerException value) server,
    required TResult Function(_$CryptoInternetException value) noInternet,
    required TResult Function(_$CryptoUnknownException value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CryptoServerException value)? server,
    TResult? Function(_$CryptoInternetException value)? noInternet,
    TResult? Function(_$CryptoUnknownException value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CryptoServerException value)? server,
    TResult Function(_$CryptoInternetException value)? noInternet,
    TResult Function(_$CryptoUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$CryptoInternetException implements CryptoException {
  const factory _$CryptoInternetException() = _$$CryptoInternetExceptionImpl;
}

/// @nodoc
abstract class _$$$CryptoUnknownExceptionImplCopyWith<$Res> {
  factory _$$$CryptoUnknownExceptionImplCopyWith(
          _$$CryptoUnknownExceptionImpl value,
          $Res Function(_$$CryptoUnknownExceptionImpl) then) =
      __$$$CryptoUnknownExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception});
}

/// @nodoc
class __$$$CryptoUnknownExceptionImplCopyWithImpl<$Res>
    extends _$CryptoExceptionCopyWithImpl<$Res, _$$CryptoUnknownExceptionImpl>
    implements _$$$CryptoUnknownExceptionImplCopyWith<$Res> {
  __$$$CryptoUnknownExceptionImplCopyWithImpl(
      _$$CryptoUnknownExceptionImpl _value,
      $Res Function(_$$CryptoUnknownExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$$CryptoUnknownExceptionImpl(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$$CryptoUnknownExceptionImpl implements _$CryptoUnknownException {
  const _$$CryptoUnknownExceptionImpl({this.exception});

  @override
  final Exception? exception;

  @override
  String toString() {
    return 'CryptoException.unknown(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$CryptoUnknownExceptionImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$CryptoUnknownExceptionImplCopyWith<_$$CryptoUnknownExceptionImpl>
      get copyWith => __$$$CryptoUnknownExceptionImplCopyWithImpl<
          _$$CryptoUnknownExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Exception? exception) server,
    required TResult Function() noInternet,
    required TResult Function(Exception? exception) unknown,
  }) {
    return unknown(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Exception? exception)? server,
    TResult? Function()? noInternet,
    TResult? Function(Exception? exception)? unknown,
  }) {
    return unknown?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Exception? exception)? server,
    TResult Function()? noInternet,
    TResult Function(Exception? exception)? unknown,
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
    required TResult Function(_$CryptoServerException value) server,
    required TResult Function(_$CryptoInternetException value) noInternet,
    required TResult Function(_$CryptoUnknownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CryptoServerException value)? server,
    TResult? Function(_$CryptoInternetException value)? noInternet,
    TResult? Function(_$CryptoUnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CryptoServerException value)? server,
    TResult Function(_$CryptoInternetException value)? noInternet,
    TResult Function(_$CryptoUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$CryptoUnknownException implements CryptoException {
  const factory _$CryptoUnknownException({final Exception? exception}) =
      _$$CryptoUnknownExceptionImpl;

  Exception? get exception;
  @JsonKey(ignore: true)
  _$$$CryptoUnknownExceptionImplCopyWith<_$$CryptoUnknownExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
