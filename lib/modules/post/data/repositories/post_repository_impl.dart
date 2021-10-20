import 'package:json_placeholder/core/base/api_wrapper.dart';
import 'package:json_placeholder/modules/post/data/datasource/post_datasource.dart';
import 'package:json_placeholder/modules/post/domain/entities/comment_entity.dart';
import 'package:json_placeholder/modules/post/domain/entities/post_entity.dart';
import 'package:json_placeholder/modules/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository{

  PostDatasource postDatasource;
  PostRepositoryImpl({required this.postDatasource});

  @override
  Future<ApiWrapper<PostEntity>> getPost(int postId) =>
      postDatasource.getPost(postId);

  @override
  Future<ApiWrapper<List<CommentEntity>>> getComments(int postId) =>
      postDatasource.getComments(postId);


}