import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social/Utils/Constants/asset_constant.dart';
import 'package:social/Utils/Constants/color_constant.dart';
import 'package:social/Utils/Constants/text_constant.dart';
import 'package:social/Utils/Widgets/custom_text_widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final Shader linearGradient = const LinearGradient(
    colors: ColorConstants.gradientColorList,
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            AssetConstant.profileTopSection,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Column(
            children: [
              SizedBox(
                height: 15.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, right: 16, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          SizedBox(width: 12.w),
                          const CustomTextWidget(
                            TextConstant.profileAppBarTxt,
                            color: ColorConstants.whiteColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.settings_outlined,
                              color: ColorConstants.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      SizedBox(
                        child: Image.asset(
                          AssetConstant.profileImg,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Column(
                    children: [
                      const CustomTextWidget(
                        TextConstant.profileUsernameTxt,
                        color: ColorConstants.themeTextBlackColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                      const CustomTextWidget(
                        TextConstant.profileUserLocationTxt,
                        color: ColorConstants.profileAddressColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(
                        height: 2.3.h,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 14, right: 14),
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: ColorConstants.activityNotificationColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomTextWidget(
                              TextConstant.profileFollowerTxt1,
                              color: ColorConstants.themeTextBlackColor,
                              fontSize: 11.8,
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: 1.4.w,
                            ),
                            const CustomTextWidget(
                              TextConstant.profileFollowerTxt2,
                              color: ColorConstants.fadedTextColor,
                              fontSize: 11.8,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(
                              width: 11.w,
                            ),
                            const CustomTextWidget(
                              TextConstant.profileFollowerTxt3,
                              color: ColorConstants.themeTextBlackColor,
                              fontSize: 11.8,
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: 1.4.w,
                            ),
                            const CustomTextWidget(
                              TextConstant.profileFollowerTxt4,
                              color: ColorConstants.fadedTextColor,
                              fontSize: 11.8,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.language,
                            color: ColorConstants.profileAddressColor,
                          ),
                          SizedBox(
                            width: 6.5.w,
                          ),
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: ColorConstants.profileAddressColor,
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: ColorConstants.gradientColorList,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6.5.w,
                          ),
                          Image.asset(AssetConstant.profileInstaImage),
                          SizedBox(
                            width: 6.5.w,
                          ),
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: ColorConstants.profileAddressColor,
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: ColorConstants.gradientColorList,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6.5.w,
                          ),
                          Image.asset(AssetConstant.profileFbImage),
                        ],
                      ),
                      SizedBox(
                        height: 2.8.h,
                      ),
                      DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            TabBar(
                              splashFactory: NoSplash.splashFactory,
                              dividerColor: Colors.transparent,
                              indicatorPadding: const EdgeInsets.only(
                                  top: 6, bottom: 6, left: 10, right: 10),
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicatorColor: ColorConstants.fadedTextColor,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: ColorConstants.homeTabBarIndicatorColor,
                              ),
                              tabs: const [
                                Tab(
                                  text: TextConstant.profileTabBarTxt1,
                                ),
                                Tab(
                                  text: TextConstant.profileTabBarTxt2,
                                ),
                              ],
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                foreground: Paint()..shader = linearGradient,
                              ),
                              unselectedLabelStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: ColorConstants.fadedTextColor,
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(
                              height: 40.h,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TabBarView(
                                children: [
                                  GridView.count(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 19,
                                    mainAxisSpacing: 16,
                                    children: [
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'YOUR LIKES',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'DOWNLOAD',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'PORTRAIT PHOTOGRAPHY',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'PORTRAIT PHOTOGRAPHY',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'PORTRAIT PHOTOGRAPHY',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'PORTRAIT PHOTOGRAPHY',
                                      ),
                                    ],
                                  ),
                                  GridView.count(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 19,
                                    mainAxisSpacing: 16,
                                    children: [
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'YOUR LIKES',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'DOWNLOAD',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'PORTRAIT PHOTOGRAPHY',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'PORTRAIT PHOTOGRAPHY',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'PORTRAIT PHOTOGRAPHY',
                                      ),
                                      _homeBox(
                                        context,
                                        AssetConstant.profileCollectionImage,
                                        'PORTRAIT PHOTOGRAPHY',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _homeBox(BuildContext context, String imagePath, String label) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 16.9.h,
              width: 44.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              alignment: Alignment.center,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                ),
                child: CustomTextWidget(
                  label,
                  textAlign: TextAlign.center,
                  color: ColorConstants.whiteColor,
                  fontSize: 10.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 0.7.h,
            ),
            const CustomTextWidget(
              TextConstant.profileTabCollectionTxt,
              color: ColorConstants.discoverCollectionTextColor,
              fontSize: 9.5,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ],
    );
  }
}
