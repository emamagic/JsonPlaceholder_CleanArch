import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:json_placeholder/core/constance/const.dart';
import 'package:json_placeholder/modules/post/data/models/comment_model.dart';
import 'package:json_placeholder/modules/post/data/models/post_model.dart';
import 'package:json_placeholder/modules/posts/data/models/posts_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'rest_provider.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class RestProvider {
  factory RestProvider(Dio dio, {String baseUrl}) = _RestProvider;

  @GET("posts")
  Future<List<PostsModel>> getPosts();

  @GET("posts/{postId}")
  Future<PostModel> getPost(@Path("postId") int postId);

  @GET("comments")
  Future<List<CommentModel>> getComments(@Query("postId") int postId);
}
