import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:note_app/common_wigdets/common_button.dart';
import 'package:note_app/common_wigdets/common_textformflied.dart';
import 'package:note_app/constants/app_assets/assets_icons.dart';
import 'package:note_app/constants/app_colors.dart';
import 'package:note_app/constants/text_font_style.dart';
import 'package:note_app/constants/validator.dart';
import 'package:note_app/features/auth/register/presentation/register_screen.dart';
import 'package:note_app/features/home/presentation/home_screen.dart';
import 'package:note_app/helpers/ui_helpers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFAFAFB,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.verticalSpace(40.h),
                  Container(
                    height: 48.h,
                    width: 48.w,
                    decoration: BoxDecoration(
                      color: AppColors.c1A1A1A,
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                    child: Center(
                      child: Image.asset(
                        AssetsIcons.notesIcon,
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                  ),
                  UIHelper.verticalSpace(32.h),
                  Text(
                    "Welcome\nback.",
                    style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.c222222,
                    ),
                  ),
                  UIHelper.verticalSpace(8.h),
                  Text(
                    "Sign in to continue capturing your thoughts.",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.cA0A0A0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  UIHelper.verticalSpace(40.h),
                  CommonTextFormField(
                    label: 'Email',
                    hintText: 'Enter your mail address',
                    controller: emailController,
                    validator: emailValidator,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Image.asset(
                        AssetsIcons.emailIcon,
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                  ),
                  UIHelper.verticalSpace(20.h),
                  CommonTextFormField(
                    label: 'Password',
                    hintText: 'Enter your password',
                    controller: passwordController,
                    validator: passwordValidator,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    isPassword: true,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Image.asset(
                        AssetsIcons.lockIcon,
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                  ),
                  UIHelper.verticalSpace(12.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextFontStyle.textStylec24cAsap500c181B25
                            .copyWith(
                              fontSize: 16.sp,
                              color: AppColors.c2C5F8D,
                            ),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpace(36.h),
                  CommonButton(
                    text: 'Sign in',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Get.to(() => HomeScreen());
                      }
                    },
                  ),
                  UIHelper.verticalSpace(40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.cA0A0A0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => RegisterScreen());
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.c1A1A1A,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
