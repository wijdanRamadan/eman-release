// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardsContentValueFaliureTearOff {
  const _$CardsContentValueFaliureTearOff();

  InvalidTitleData<T> invalidTitleData<T>({required String title}) {
    return InvalidTitleData<T>(
      title: title,
    );
  }

  InvalidContentData<T> invalidContentData<T>({required String content}) {
    return InvalidContentData<T>(
      content: content,
    );
  }

  InvalidImageUrl<T> invalidImageUrl<T>({required String url}) {
    return InvalidImageUrl<T>(
      url: url,
    );
  }
}

/// @nodoc
const $CardsContentValueFaliure = _$CardsContentValueFaliureTearOff();

/// @nodoc
mixin _$CardsContentValueFaliure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) invalidTitleData,
    required TResult Function(String content) invalidContentData,
    required TResult Function(String url) invalidImageUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? invalidTitleData,
    TResult Function(String content)? invalidContentData,
    TResult Function(String url)? invalidImageUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? invalidTitleData,
    TResult Function(String content)? invalidContentData,
    TResult Function(String url)? invalidImageUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidTitleData<T> value) invalidTitleData,
    required TResult Function(InvalidContentData<T> value) invalidContentData,
    required TResult Function(InvalidImageUrl<T> value) invalidImageUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidTitleData<T> value)? invalidTitleData,
    TResult Function(InvalidContentData<T> value)? invalidContentData,
    TResult Function(InvalidImageUrl<T> value)? invalidImageUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidTitleData<T> value)? invalidTitleData,
    TResult Function(InvalidContentData<T> value)? invalidContentData,
    TResult Function(InvalidImageUrl<T> value)? invalidImageUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsContentValueFaliureCopyWith<T, $Res> {
  factory $CardsContentValueFaliureCopyWith(CardsContentValueFaliure<T> value,
          $Res Function(CardsContentValueFaliure<T>) then) =
      _$CardsContentValueFaliureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CardsContentValueFaliureCopyWithImpl<T, $Res>
    implements $CardsContentValueFaliureCopyWith<T, $Res> {
  _$CardsContentValueFaliureCopyWithImpl(this._value, this._then);

  final CardsContentValueFaliure<T> _value;
  // ignore: unused_field
  final $Res Function(CardsContentValueFaliure<T>) _then;
}

/// @nodoc
abstract class $InvalidTitleDataCopyWith<T, $Res> {
  factory $InvalidTitleDataCopyWith(
          InvalidTitleData<T> value, $Res Function(InvalidTitleData<T>) then) =
      _$InvalidTitleDataCopyWithImpl<T, $Res>;
  $Res call({String title});
}

/// @nodoc
class _$InvalidTitleDataCopyWithImpl<T, $Res>
    extends _$CardsContentValueFaliureCopyWithImpl<T, $Res>
    implements $InvalidTitleDataCopyWith<T, $Res> {
  _$InvalidTitleDataCopyWithImpl(
      InvalidTitleData<T> _value, $Res Function(InvalidTitleData<T>) _then)
      : super(_value, (v) => _then(v as InvalidTitleData<T>));

  @override
  InvalidTitleData<T> get _value => super._value as InvalidTitleData<T>;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(InvalidTitleData<T>(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidTitleData<T> implements InvalidTitleData<T> {
  const _$InvalidTitleData({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'CardsContentValueFaliure<$T>.invalidTitleData(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidTitleData<T> &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  $InvalidTitleDataCopyWith<T, InvalidTitleData<T>> get copyWith =>
      _$InvalidTitleDataCopyWithImpl<T, InvalidTitleData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) invalidTitleData,
    required TResult Function(String content) invalidContentData,
    required TResult Function(String url) invalidImageUrl,
  }) {
    return invalidTitleData(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? invalidTitleData,
    TResult Function(String content)? invalidContentData,
    TResult Function(String url)? invalidImageUrl,
  }) {
    return invalidTitleData?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? invalidTitleData,
    TResult Function(String content)? invalidContentData,
    TResult Function(String url)? invalidImageUrl,
    required TResult orElse(),
  }) {
    if (invalidTitleData != null) {
      return invalidTitleData(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidTitleData<T> value) invalidTitleData,
    required TResult Function(InvalidContentData<T> value) invalidContentData,
    required TResult Function(InvalidImageUrl<T> value) invalidImageUrl,
  }) {
    return invalidTitleData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidTitleData<T> value)? invalidTitleData,
    TResult Function(InvalidContentData<T> value)? invalidContentData,
    TResult Function(InvalidImageUrl<T> value)? invalidImageUrl,
  }) {
    return invalidTitleData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidTitleData<T> value)? invalidTitleData,
    TResult Function(InvalidContentData<T> value)? invalidContentData,
    TResult Function(InvalidImageUrl<T> value)? invalidImageUrl,
    required TResult orElse(),
  }) {
    if (invalidTitleData != null) {
      return invalidTitleData(this);
    }
    return orElse();
  }
}

abstract class InvalidTitleData<T> implements CardsContentValueFaliure<T> {
  const factory InvalidTitleData({required String title}) =
      _$InvalidTitleData<T>;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidTitleDataCopyWith<T, InvalidTitleData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidContentDataCopyWith<T, $Res> {
  factory $InvalidContentDataCopyWith(InvalidContentData<T> value,
          $Res Function(InvalidContentData<T>) then) =
      _$InvalidContentDataCopyWithImpl<T, $Res>;
  $Res call({String content});
}

/// @nodoc
class _$InvalidContentDataCopyWithImpl<T, $Res>
    extends _$CardsContentValueFaliureCopyWithImpl<T, $Res>
    implements $InvalidContentDataCopyWith<T, $Res> {
  _$InvalidContentDataCopyWithImpl(
      InvalidContentData<T> _value, $Res Function(InvalidContentData<T>) _then)
      : super(_value, (v) => _then(v as InvalidContentData<T>));

  @override
  InvalidContentData<T> get _value => super._value as InvalidContentData<T>;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(InvalidContentData<T>(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidContentData<T> implements InvalidContentData<T> {
  const _$InvalidContentData({required this.content});

  @override
  final String content;

  @override
  String toString() {
    return 'CardsContentValueFaliure<$T>.invalidContentData(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidContentData<T> &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  $InvalidContentDataCopyWith<T, InvalidContentData<T>> get copyWith =>
      _$InvalidContentDataCopyWithImpl<T, InvalidContentData<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) invalidTitleData,
    required TResult Function(String content) invalidContentData,
    required TResult Function(String url) invalidImageUrl,
  }) {
    return invalidContentData(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? invalidTitleData,
    TResult Function(String content)? invalidContentData,
    TResult Function(String url)? invalidImageUrl,
  }) {
    return invalidContentData?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? invalidTitleData,
    TResult Function(String content)? invalidContentData,
    TResult Function(String url)? invalidImageUrl,
    required TResult orElse(),
  }) {
    if (invalidContentData != null) {
      return invalidContentData(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidTitleData<T> value) invalidTitleData,
    required TResult Function(InvalidContentData<T> value) invalidContentData,
    required TResult Function(InvalidImageUrl<T> value) invalidImageUrl,
  }) {
    return invalidContentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidTitleData<T> value)? invalidTitleData,
    TResult Function(InvalidContentData<T> value)? invalidContentData,
    TResult Function(InvalidImageUrl<T> value)? invalidImageUrl,
  }) {
    return invalidContentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidTitleData<T> value)? invalidTitleData,
    TResult Function(InvalidContentData<T> value)? invalidContentData,
    TResult Function(InvalidImageUrl<T> value)? invalidImageUrl,
    required TResult orElse(),
  }) {
    if (invalidContentData != null) {
      return invalidContentData(this);
    }
    return orElse();
  }
}

abstract class InvalidContentData<T> implements CardsContentValueFaliure<T> {
  const factory InvalidContentData({required String content}) =
      _$InvalidContentData<T>;

  String get content => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidContentDataCopyWith<T, InvalidContentData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidImageUrlCopyWith<T, $Res> {
  factory $InvalidImageUrlCopyWith(
          InvalidImageUrl<T> value, $Res Function(InvalidImageUrl<T>) then) =
      _$InvalidImageUrlCopyWithImpl<T, $Res>;
  $Res call({String url});
}

/// @nodoc
class _$InvalidImageUrlCopyWithImpl<T, $Res>
    extends _$CardsContentValueFaliureCopyWithImpl<T, $Res>
    implements $InvalidImageUrlCopyWith<T, $Res> {
  _$InvalidImageUrlCopyWithImpl(
      InvalidImageUrl<T> _value, $Res Function(InvalidImageUrl<T>) _then)
      : super(_value, (v) => _then(v as InvalidImageUrl<T>));

  @override
  InvalidImageUrl<T> get _value => super._value as InvalidImageUrl<T>;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(InvalidImageUrl<T>(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidImageUrl<T> implements InvalidImageUrl<T> {
  const _$InvalidImageUrl({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'CardsContentValueFaliure<$T>.invalidImageUrl(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidImageUrl<T> &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $InvalidImageUrlCopyWith<T, InvalidImageUrl<T>> get copyWith =>
      _$InvalidImageUrlCopyWithImpl<T, InvalidImageUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) invalidTitleData,
    required TResult Function(String content) invalidContentData,
    required TResult Function(String url) invalidImageUrl,
  }) {
    return invalidImageUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? invalidTitleData,
    TResult Function(String content)? invalidContentData,
    TResult Function(String url)? invalidImageUrl,
  }) {
    return invalidImageUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? invalidTitleData,
    TResult Function(String content)? invalidContentData,
    TResult Function(String url)? invalidImageUrl,
    required TResult orElse(),
  }) {
    if (invalidImageUrl != null) {
      return invalidImageUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidTitleData<T> value) invalidTitleData,
    required TResult Function(InvalidContentData<T> value) invalidContentData,
    required TResult Function(InvalidImageUrl<T> value) invalidImageUrl,
  }) {
    return invalidImageUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidTitleData<T> value)? invalidTitleData,
    TResult Function(InvalidContentData<T> value)? invalidContentData,
    TResult Function(InvalidImageUrl<T> value)? invalidImageUrl,
  }) {
    return invalidImageUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidTitleData<T> value)? invalidTitleData,
    TResult Function(InvalidContentData<T> value)? invalidContentData,
    TResult Function(InvalidImageUrl<T> value)? invalidImageUrl,
    required TResult orElse(),
  }) {
    if (invalidImageUrl != null) {
      return invalidImageUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidImageUrl<T> implements CardsContentValueFaliure<T> {
  const factory InvalidImageUrl({required String url}) = _$InvalidImageUrl<T>;

  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidImageUrlCopyWith<T, InvalidImageUrl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
