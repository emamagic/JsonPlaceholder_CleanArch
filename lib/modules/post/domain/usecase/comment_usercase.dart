import 'package:json_placeholder/core/base/api_wrapper.dart';
import 'package:json_placeholder/core/base/base_usercase.dart';
import 'package:json_placeholder/modules/post/domain/entities/comment_entity.dart';
import 'package:json_placeholder/modules/post/domain/repositories/post_repository.dart';

class CommentUseCase extends BaseUseCase<List<CommentEntity>, Map> {

  PostRepository repository;
  CommentUseCase({required this.repository});

  @override
  Future<ApiWrapper<List<CommentEntity>>> call(Map? params) =>
      repository.getComments(params!['postId']);



}