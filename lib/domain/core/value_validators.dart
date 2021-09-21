import 'package:dartz/dartz.dart';
import 'package:eman/domain/core/failures.dart';

Either<CardsContentValueFaliure<String>, String> validateCardTitle(
    String title) {
  const titleRegex = '^[a-zA-Z0-9_ ]*\$';
  if (RegExp(titleRegex).hasMatch(title))
    return Right(title);
  else
    return Left(CardsContentValueFaliure.invalidTitleData(title: title));
}

Either<CardsContentValueFaliure<String>, String> validateCardContent(
    String content) {
  const contentRegex = '^[a-zA-Z0-9_ ]*\$';
  if (RegExp(contentRegex).hasMatch(content))
    return Right(content);
  else
    return Left(CardsContentValueFaliure.invalidContentData(content: content));
}
