import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:social/Modules/Home/Controller/like_controller.dart';
import 'package:social/Modules/Home/Model/post_model.dart';
import 'package:social/Utils/Constants/asset_constant.dart';

class HomeController extends GetxController {
  var posts = <PostModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPost();
  }

  void likeIconChange(PostModel post) async {
    post.like.value = !post.like.value;
    await GetStorage().write('like_${post.id}', post.like.value);
    if (post.like.value) {
      Get.find<LikedsController>().addToFavourite(post);
    } else {
      Get.find<LikedsController>().removeFromFavourite(post);
    }
  }

  void fetchPost() {
    var dummyPost = [
      PostModel(
        id: 1,
        profileImage: AssetConstant.homeAccount1,
        userName: 'Thanh Pham',
        postedImage: AssetConstant.homePost1,
        like: GetStorage().read('like_1') ?? false,
      ),
      PostModel(
        id: 2,
        profileImage: AssetConstant.homeAccount2,
        userName: 'Bruno',
        postedImage: AssetConstant.homePost2,
        like: GetStorage().read('like_2') ?? false,
      ),
    ];
    posts.value = dummyPost;

    // Restore liked posts
    for (var post in dummyPost) {
      if (post.like.value) {
        Get.find<LikedsController>().addToFavourite(post);
      }
    }
  }
}
