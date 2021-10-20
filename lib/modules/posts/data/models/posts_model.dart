import 'package:json_placeholder/modules/posts/domain/entities/posts_entity.dart';

class PostsModel extends PostsEntity {

  int? _userId;
  int? _id;
  String? _title;
  String? _body;

  int? get userId => _userId;
  int? get id => _id;
  String? get title => _title;
  String? get body => _body;

  PostsModel({
    int? userId,
    int? id,
    String? title,
    String? body,}): super(userId: userId, id: id, title: title, body: body){
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }

  PostsModel.fromJson(dynamic json) {
    _userId = json['userId'];
    _id = json['id'];
    _title = json['title'];
    _body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = _userId;
    map['id'] = _id;
    map['title'] = _title;
    map['body'] = _body;
    return map;
  }

}