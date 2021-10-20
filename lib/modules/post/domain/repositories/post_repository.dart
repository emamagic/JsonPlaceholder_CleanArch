import 'package:json_placeholder/core/base/api_wrapper.dart';
import 'package:json_placeholder/modules/post/domain/entities/comment_entity.dart';
import 'package:json_placeholder/modules/post/domain/entities/post_entity.dart';

abstract class PostRepository {
  Future<ApiWrapper<PostEntity>> getPost(int postId);
  Future<ApiWrapper<List<CommentEntity>>> getComments(int postId);
}