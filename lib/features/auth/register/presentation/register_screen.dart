import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:note_app/common_wigdets/common_button.dart';
import 'package:note_app/common_wigdets/common_textformflied.dart';
import 'package:note_app/constants/app_assets/assets_icons.dart';
import 'package:note_app/constants/app_colors.dart';
import 'package:note_app/constants/text_font_style.dart';
import 'package:note_app/constants/validator.dart';
import 'package:note_app/features/auth/login/presentation/login_screen.dart';
import 'package:note_app/helpers/ui_helpers.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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

          /// ✅ FORM ADDED HERE
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.verticalSpace(40.h),

                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColors.cE8E8E8),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16.sp,
                        color: AppColors.c222222,
                      ),
                    ),
                  ),

                  UIHelper.verticalSpace(28.h),

                  Text(
                    "Create\naccount.",
                    style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.c222222,
                    ),
                  ),

                  UIHelper.verticalSpace(8.h),

                  Text(
                    "Start capturing your thoughts today.",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.cA0A0A0,
                    ),
                  ),

                  UIHelper.verticalSpace(36.h),

                  CommonTextFormField(
                    label: 'Full Name',
                    hintText: 'Enter your full name',
                    controller: nameController,
                    validator: nameValidator,
                    keyboardType: TextInputType.name,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Image.asset(AssetsIcons.personIcon,
                          height: 16.h, width: 16.w),
                    ),
                  ),

                  UIHelper.verticalSpace(20.h),

                  CommonTextFormField(
                    label: 'Email',
                    hintText: 'Enter your mail address',
                    controller: emailController,
                    validator: emailValidator,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Image.asset(AssetsIcons.emailIcon,
                          height: 16.h, width: 16.w),
                    ),
                  ),

                  UIHelper.verticalSpace(20.h),

                  CommonTextFormField(
                    label: 'Password',
                    hintText: 'Enter your password',
                    controller: passwordController,
                    validator: passwordValidator,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    isPassword: true,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Image.asset(AssetsIcons.lockIcon,
                          height: 16.h, width: 16.w),
                    ),
                  ),

                  UIHelper.verticalSpace(20.h),

                  CommonTextFormField(
                    label: 'Confirm Password',
                    hintText: 'Confirm your password',
                    controller: confirmPasswordController,
                    obscureText: true,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please confirm your password';
                      }

                      if (value.trim() != passwordController.text.trim()) {
                        return 'Passwords do not match';
                      }

                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Image.asset(AssetsIcons.lockIcon,
                          height: 16.h, width: 16.w),
                    ),
                  ),

                  UIHelper.verticalSpace(36.h),

                  CommonButton(
                    text: 'Create Account',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Get.to(() => const LoginScreen());
                      }
                    },
                  ),

                  UIHelper.verticalSpace(16.h),

                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextFontStyle
                          .textStylec24cAsap500c181B25
                          .copyWith(
                            fontSize: 14.sp,
                            color: AppColors.c525866,
                          ),
                      children: [
                        const TextSpan(
                          text:
                              'By creating an account you agree to our ',
                        ),
                        TextSpan(
                          text: 'Terms of\nService',
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        const TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),

                  UIHelper.verticalSpace(36.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.cA0A0A0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => const LoginScreen()),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.c1A1A1A,
                          ),
                        ),
                      ),
                    ],
                  ),

                  UIHelper.verticalSpace(24.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}