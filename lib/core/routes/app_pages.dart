import 'package:get/get.dart';
import 'package:json_placeholder/core/routes/app_routes.dart';
import 'package:json_placeholder/modules/post/routes/post_route.dart';
import 'package:json_placeholder/modules/posts/routes/posts_route.dart';

class AppPages {

  static String get initialRoute {
    return AppRoutes.POSTS;
  }

  static List<GetPage> get pages => [
      ...postsRoute, ...postRoute
  ];

}