import 'package:dio/dio.dart';
import 'package:json_placeholder/data/network/interceptors/logging_interceptor.dart';
import 'package:json_placeholder/data/network/services/rest_provider.dart';

class DioProvider {

  late Dio dio;
  late RestProvider restProvider;
  static final DioProvider _instance = DioProvider._internal();
  factory DioProvider() => _instance;

  DioProvider._internal() {
    dio = Dio(
    BaseOptions(
    connectTimeout: 20000,
    receiveTimeout: 20000
    )
    )..interceptors.addAll([LoggingInterceptor()]);
        restProvider = RestProvider(dio);
    }

}