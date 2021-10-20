import 'package:json_placeholder/core/base/api_wrapper.dart';
import 'package:json_placeholder/core/base/base_usercase.dart';
import 'package:json_placeholder/modules/post/domain/entities/post_entity.dart';
import 'package:json_placeholder/modules/post/domain/repositories/post_repository.dart';

class PostUseCase extends BaseUseCase<PostEntity, Map> {

  PostRepository repository;
  PostUseCase({required this.repository});

  @override
  Future<ApiWrapper<PostEntity>> call(Map? params) =>
      repository.getPost(params!['postId']);



}