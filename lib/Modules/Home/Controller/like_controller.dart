import 'package:get/get.dart';
import 'package:social/Modules/Home/Model/post_model.dart';

class LikedsController extends GetxController {
  var likePosts = <PostModel>[].obs;

  void addToFavourite(PostModel favouritePost) {
    if (!likePosts.contains(favouritePost)) {
      likePosts.add(favouritePost);
    }
  }

  void removeFromFavourite(PostModel removeFavourite) {
    likePosts.remove(removeFavourite);
  }
}
