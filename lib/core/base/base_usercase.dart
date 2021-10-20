import 'package:json_placeholder/core/base/api_wrapper.dart';

abstract class BaseUseCase<Type, Map> {
  Future<ApiWrapper<Type>> call(Map params);
}