import 'package:json_placeholder/data/network/dio/dio_provider.dart';
import 'package:json_placeholder/data/network/services/rest_provider.dart';

abstract class BaseDatasource {

  late RestProvider restProvider;

  BaseDatasource() {
    /// always return same instance of dio
    var provider = DioProvider();
    restProvider = provider.restProvider;
  }

}