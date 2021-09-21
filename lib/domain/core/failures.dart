import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class CardsContentValueFaliure<T> with _$CardsContentValueFaliure<T> {
  const factory CardsContentValueFaliure.invalidTitleData(
      {required String title}) = InvalidTitleData<T>;
  const factory CardsContentValueFaliure.invalidContentData(
      {required String content}) = InvalidContentData<T>;
  const factory CardsContentValueFaliure.invalidImageUrl(
      {required String url}) = InvalidImageUrl<T>;
}
