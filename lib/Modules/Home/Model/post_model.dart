import 'package:get/get.dart';

class PostModel {
  final int id;
  final String profileImage;
  final String userName;
  final String postedImage;
  RxBool like;

  PostModel(
      {required this.id,
      required this.profileImage,
      required this.userName,
      required this.postedImage,
      bool like = false})
      : like = like.obs;
}
