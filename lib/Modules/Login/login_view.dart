import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:social/Modules/Login/login_controller.dart';
import 'package:social/Routes/app_routes.dart';
import 'package:social/Utils/Constants/asset_constant.dart';
import 'package:social/Utils/Constants/color_constant.dart';
import 'package:social/Utils/Constants/text_constant.dart';
import 'package:social/Utils/Constants/widget_constant.dart';
import 'package:social/Utils/Widgets/custom_textfield.dart';
import 'package:social/Utils/Widgets/custom_text_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                fit: BoxFit.cover,
                AssetConstant.authImg,
                width: 100.w,
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CustomTextWidget(
                      TextConstant.authImgTxt1,
                      color: ColorConstants.whiteColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const CustomTextWidget(
                      TextConstant.authImgTxt2,
                      color: ColorConstants.whiteColor,
                      fontSize: 30,
                    )
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(7.5.w, 5.h, 7.5.w, 6.5.h),
                decoration: const BoxDecoration(
                  color: ColorConstants.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28.0),
                      topRight: Radius.circular(28.0),
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextField(
                      hintText: TextConstant.authTxtField1Txt,
                      keyboardInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 2.h),
                    Obx(
                      () => CustomPassTextField(
                        obscureText: loginController.passwordVisible.value,
                        hintText: TextConstant.authTxtField2Txt,
                        suffixIcon: IconButton(
                          onPressed: () {
                            loginController.passwordVisible.value =
                                !loginController.passwordVisible.value;
                          },
                          icon: Icon(
                            loginController.passwordVisible.value
                                ? Icons.visibility_off_outlined
                                : Icons.remove_red_eye_outlined,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.forgotPassScreen);
                      },
                      child: const CustomTextWidget(
                        TextConstant.authForgotPassTxt,
                        textAlign: TextAlign.center,
                        color: ColorConstants.authThemeTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(height: 5.08.h),
                    WidgetConstants.authenticationButton(
                        TextConstant.authBtnTxt1, () {
                      Get.toNamed(AppRoutes.categoryPage);
                    }),
                    SizedBox(height: 5.h),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomTextWidget(
                          TextConstant.authOptionTxt,
                          letterSpacing: 2.0,
                          fontSize: 10,
                          color: ColorConstants.authOptionTextColor,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 11.w,
                              height: 5.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color:
                                      ColorConstants.authOptionContainerColor),
                              child: Image.asset(AssetConstant.authGoogle),
                            ),
                            SizedBox(width: 5.w),
                            Container(
                              width: 11.w,
                              height: 5.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color:
                                      ColorConstants.authOptionContainerColor),
                              child: Image.asset(AssetConstant.authFacebook),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 6.h),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          const TextSpan(
                            text: TextConstant.authRichTxt1,
                            style: TextStyle(
                              color: ColorConstants.authOptionTextColor,
                            ),
                          ),
                          TextSpan(
                            text: TextConstant.authBtnTxt3,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(AppRoutes.signupScreen);
                              },
                            style: const TextStyle(
                              color: ColorConstants.authThemeTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
