import 'package:json_placeholder/core/base/api_wrapper.dart';
import 'package:json_placeholder/core/base/base_datasource.dart';
import 'package:json_placeholder/core/exceptions/network_exceptions.dart';
import 'package:json_placeholder/modules/post/domain/entities/comment_entity.dart';
import 'package:json_placeholder/modules/post/domain/entities/post_entity.dart';

abstract class PostDatasource {
  Future<ApiWrapper<PostEntity>> getPost(int postId);

  Future<ApiWrapper<List<CommentEntity>>> getComments(int postId);
}

class PostDatasourceImpl extends BaseDatasource implements PostDatasource {
  @override
  Future<ApiWrapper<PostEntity>> getPost(int postId) async {
    try {
      return ApiWrapper.success(data: await restProvider.getPost(postId));
    } catch (error) {
      return ApiWrapper.failure(
          error: NetworkExceptions.getDioException(error));
    }
  }

  @override
  Future<ApiWrapper<List<CommentEntity>>> getComments(int postId) async {
    try {
      return ApiWrapper.success(data: await restProvider.getComments(postId));
    } catch (error) {
      return ApiWrapper.failure(
          error: NetworkExceptions.getDioException(error));
    }
  }
}
