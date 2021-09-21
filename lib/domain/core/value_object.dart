import 'package:eman/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<CardsContentValueFaliure<T>, T> get value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'value{$value}';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) {
      return true;
    }
    return o is ValueObject<T> && o.value == value;
  }
}
