import 'package:json_placeholder/core/base/api_wrapper.dart';
import 'package:json_placeholder/modules/posts/domain/entities/posts_entity.dart';

abstract class PostsRepository {
  Future<ApiWrapper<List<PostsEntity>>> getPosts();
}