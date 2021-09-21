// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkFailureTearOff {
  const _$NetworkFailureTearOff();

  GeneralNetworkError generalNetworkError() {
    return const GeneralNetworkError();
  }
}

/// @nodoc
const $NetworkFailure = _$NetworkFailureTearOff();

/// @nodoc
mixin _$NetworkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generalNetworkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? generalNetworkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generalNetworkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralNetworkError value) generalNetworkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeneralNetworkError value)? generalNetworkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralNetworkError value)? generalNetworkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  final NetworkFailure _value;
  // ignore: unused_field
  final $Res Function(NetworkFailure) _then;
}

/// @nodoc
abstract class $GeneralNetworkErrorCopyWith<$Res> {
  factory $GeneralNetworkErrorCopyWith(
          GeneralNetworkError value, $Res Function(GeneralNetworkError) then) =
      _$GeneralNetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeneralNetworkErrorCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements $GeneralNetworkErrorCopyWith<$Res> {
  _$GeneralNetworkErrorCopyWithImpl(
      GeneralNetworkError _value, $Res Function(GeneralNetworkError) _then)
      : super(_value, (v) => _then(v as GeneralNetworkError));

  @override
  GeneralNetworkError get _value => super._value as GeneralNetworkError;
}

/// @nodoc

class _$GeneralNetworkError implements GeneralNetworkError {
  const _$GeneralNetworkError();

  @override
  String toString() {
    return 'NetworkFailure.generalNetworkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GeneralNetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generalNetworkError,
  }) {
    return generalNetworkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? generalNetworkError,
  }) {
    return generalNetworkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generalNetworkError,
    required TResult orElse(),
  }) {
    if (generalNetworkError != null) {
      return generalNetworkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralNetworkError value) generalNetworkError,
  }) {
    return generalNetworkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeneralNetworkError value)? generalNetworkError,
  }) {
    return generalNetworkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralNetworkError value)? generalNetworkError,
    required TResult orElse(),
  }) {
    if (generalNetworkError != null) {
      return generalNetworkError(this);
    }
    return orElse();
  }
}

abstract class GeneralNetworkError implements NetworkFailure {
  const factory GeneralNetworkError() = _$GeneralNetworkError;
}
