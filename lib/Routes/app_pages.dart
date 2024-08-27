import 'package:get/get.dart';
import 'package:social/Modules/Category/category_page.dart';
import 'package:social/Modules/ForgotPassword/forgot_password_page.dart';
import 'package:social/Modules/Home/home_page.dart';
import 'package:social/Modules/Home/navbar.dart';
import 'package:social/Modules/Login/login_view.dart';
import 'package:social/Modules/SIgnup/signup_view.dart';
import 'package:social/Routes/app_routes.dart';

import '../Modules/Onboarding/splash_screen.dart';

const Transition transition = Transition.native;

class AppPages {
  static const initail = AppRoutes.splashScreen;
  static final routes = [
    GetPage(
        name: AppRoutes.splashScreen,
        page: () => const SplashScreen(),
        transition: transition),
    GetPage(
        name: AppRoutes.loginScreen,
        page: () => const LoginView(),
        transition: transition),
    GetPage(
        name: AppRoutes.signupScreen,
        page: () => const SignUp(),
        transition: transition),
    GetPage(
        name: AppRoutes.forgotPassScreen,
        page: () => const ForgotPassword(),
        transition: transition),
    GetPage(
        name: AppRoutes.categoryPage,
        page: () => const CategoryPage(),
        transition: transition),
    GetPage(
        name: AppRoutes.homeScreen,
        page: () => HomePage(),
        transition: transition),
    GetPage(
        name: AppRoutes.navbarScreen,
        page: () => const NavBar(),
        transition: transition),
  ];
}
