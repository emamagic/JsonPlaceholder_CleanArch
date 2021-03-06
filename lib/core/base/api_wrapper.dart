import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_placeholder/core/exceptions/network_exceptions.dart';
part 'api_wrapper.freezed.dart';

@freezed
class ApiWrapper<T> with _$ApiWrapper<T> {
  const factory ApiWrapper.success({required T data}) = Success<T>;
  const factory ApiWrapper.failure({required NetworkExceptions error}) =
  Failure<T>;
}
