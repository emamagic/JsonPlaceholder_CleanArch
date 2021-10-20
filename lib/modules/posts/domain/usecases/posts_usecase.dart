import 'package:json_placeholder/core/base/api_wrapper.dart';
import 'package:json_placeholder/core/base/base_usercase.dart';
import 'package:json_placeholder/modules/posts/domain/entities/posts_entity.dart';
import 'package:json_placeholder/modules/posts/domain/repositories/posts_repository.dart';

class PostsUseCase extends BaseUseCase<List<PostsEntity>, Map> {

  PostsRepository repository;
  PostsUseCase({required this.repository});

  @override
  Future<ApiWrapper<List<PostsEntity>>> call(Map? params) =>
      repository.getPosts();



}