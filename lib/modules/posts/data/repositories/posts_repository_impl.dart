import 'package:json_placeholder/core/base/api_wrapper.dart';
import 'package:json_placeholder/modules/posts/data/datasources/posts_datasource.dart';
import 'package:json_placeholder/modules/posts/domain/entities/posts_entity.dart';
import 'package:json_placeholder/modules/posts/domain/repositories/posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository{

  PostsDatasource postsDatasource;
  PostsRepositoryImpl({required this.postsDatasource});

  @override
  Future<ApiWrapper<List<PostsEntity>>> getPosts() =>
      postsDatasource.getPosts();


}