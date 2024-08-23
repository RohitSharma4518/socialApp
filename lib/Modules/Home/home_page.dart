import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:social/Modules/Home/Controller/like_controller.dart';
import 'package:social/Modules/Home/Controller/home_controller.dart';
import 'package:social/Modules/Home/Model/post_model.dart';
import 'package:social/Utils/Constants/asset_constant.dart';
import 'package:social/Utils/Constants/color_constant.dart';
import 'package:social/Utils/Constants/text_constant.dart';
import 'package:social/Utils/Widgets/custom_text_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeController homeController = Get.find();

  final LikedsController likedController = Get.find();

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: ColorConstants.gradientColorList,
    ).createShader(
      const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
    );
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: ColorConstants.homeBgColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.whiteColor,
          actions: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 4.4.h,
              width: 9.2.w,
              decoration: BoxDecoration(
                color: ColorConstants.homeAppBarColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image.asset(AssetConstant.appBarIcon),
            ),
            SizedBox(
              width: 4.1.w,
            )
          ],
          automaticallyImplyLeading: false,
          title: Container(
            height: 4.2.h,
            decoration: BoxDecoration(
              color: ColorConstants.homeAppBarColor,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 1.h, top: 1.h),
                border: InputBorder.none,
                hintText: TextConstant.homeAppBarTxt,
                hintStyle: const TextStyle(
                  color: ColorConstants.fadedTextColor,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: ColorConstants.authThemeTextColor2,
                ),
              ),
            ),
          ),
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            indicatorPadding:
                const EdgeInsets.only(top: 6, bottom: 6, left: 10, right: 10),
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: ColorConstants.homeTabBarIndicatorColor,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: ColorConstants.fadedTextColor,
            ),
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              foreground: Paint()..shader = linearGradient,
            ),
            tabs: const <Widget>[
              Tab(
                text: TextConstant.homeTab1Txt1,
              ),
              Tab(
                text: TextConstant.homeTab1Txt2,
              ),
              Tab(
                text: TextConstant.homeTab1Txt3,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: GetX<HomeController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.posts.length,
                    itemBuilder: (context, index) {
                      return buildPostCard(controller.posts[index], controller);
                    },
                  );
                },
              ),
            ),
            const Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: GetX<LikedsController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.likePosts.length,
                    itemBuilder: (context, index) {
                      return buildPostCard(
                          controller.likePosts[index], homeController);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPostCard(PostModel post, HomeController controller) {
    return Container(
      margin: EdgeInsets.only(top: 1.8.h, left: 5.w, right: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ColorConstants.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 14, top: 10, right: 14, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 3.4.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(post.profileImage),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 2.8.w),
                    CustomTextWidget(
                      post.userName,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.themeTextBlackColor,
                    ),
                  ],
                ),
                const CustomTextWidget(
                  TextConstant.homePostTimeTxt,
                  color: ColorConstants.fadedTextColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          Image.asset(
            post.postedImage,
            fit: BoxFit.cover,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 14, top: 12, right: 14, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 5.w,
                  height: 2.2.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetConstant.postIconPlus),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const CustomTextWidget(
                          TextConstant.homePostCmtTxt,
                          color: ColorConstants.discoverCollectionTextColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(width: 1.2.w),
                        Container(
                          width: 5.1.w,
                          height: 2.3.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AssetConstant.postIconComment),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 3.5.w),
                    Row(
                      children: [
                        const CustomTextWidget(
                          TextConstant.homePostLikeTxt,
                          color: ColorConstants.discoverCollectionTextColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(width: 1.2.w),
                        GestureDetector(
                          onTap: () {
                            controller.likeIconChange(post);
                          },
                          child: Obx(
                            () {
                              return SizedBox(
                                width: 5.1.w,
                                height: 2.3.h,
                                child: post.like.value
                                    ? const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 20,
                                      )
                                    : const Icon(
                                        Icons.favorite_border_outlined,
                                        color:
                                            ColorConstants.authThemeTextColor2,
                                        size: 20,
                                      ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
