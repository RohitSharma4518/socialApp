import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:social/Routes/app_routes.dart';
import 'package:social/Utils/Constants/asset_constant.dart';
import 'package:social/Utils/Constants/color_constant.dart';
import 'package:social/Utils/Constants/text_constant.dart';
import 'package:social/Utils/Constants/widget_constant.dart';
import 'package:social/Utils/Widgets/custom_text_widget.dart';
import 'package:social/Utils/Widgets/custom_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final Shader linearGradient = const LinearGradient(
    colors: ColorConstants.gradientColorList,
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 100.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned.fill(
                child: Align(
                  widthFactor: double.infinity,
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AssetConstant.authImg,
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                ),
              ),
              Positioned(
                top: 14.7.h,
                left: 0,
                right: 0,
                child: const Center(
                  child: CustomTextWidget(
                    TextConstant.authImgTxt1,
                    color: ColorConstants.whiteColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28.0),
                      topRight: Radius.circular(28.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 40.0),
                        child: Column(
                          children: [
                            CustomTextWidget(
                              TextConstant.authForgotPassHeadTxt,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              foregroundColor: Paint()..shader = linearGradient,
                            ),
                            SizedBox(height: 1.6.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 1.7.h,
                                horizontal: 2.6.w,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: ColorConstants.forgotPassPromtColor,
                              ),
                              child: const CustomTextWidget(
                                TextConstant.authForgotPassPromptTxt,
                                color: ColorConstants.themeTextBlackColor,
                                letterSpacing: 0.4,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.6.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const CustomTextField(
                              hintText: TextConstant.authTxtField1Txt,
                              keyboardInputType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                            SizedBox(height: 11.h),
                            WidgetConstants.authenticationButton(
                                TextConstant.authForgotPassBtnTxt, () {
                              Get.toNamed(AppRoutes.loginScreen);
                            }),
                            SizedBox(height: 7.5.h),
                            Image.asset(AssetConstant.forgotPswdImg),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
