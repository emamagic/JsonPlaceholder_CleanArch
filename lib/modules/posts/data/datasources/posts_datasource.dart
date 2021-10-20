import 'package:json_placeholder/core/base/api_wrapper.dart';
import 'package:json_placeholder/core/base/base_datasource.dart';
import 'package:json_placeholder/core/exceptions/network_exceptions.dart';
import 'package:json_placeholder/modules/posts/domain/entities/posts_entity.dart';

abstract class PostsDatasource {
  Future<ApiWrapper<List<PostsEntity>>> getPosts();
}

class PostsDatasourceImpl extends BaseDatasource implements PostsDatasource {

  @override
  Future<ApiWrapper<List<PostsEntity>>> getPosts() async {
    try {
      return ApiWrapper.success(data: await restProvider.getPosts());
    } catch (error) {
      return ApiWrapper.failure(error: NetworkExceptions.getDioException(error));
    }
  }
  
  
  
}