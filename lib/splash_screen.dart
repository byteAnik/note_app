import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/constants/app_assets/assets_icons.dart';
import 'package:note_app/constants/app_colors.dart';
import 'package:note_app/helpers/ui_helpers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      context.go('/login');
    });
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
          child: Column(
            children: [
              const Spacer(),

            
              Container(
                height: 64.h,
                width: 64.w,
                decoration: BoxDecoration(
                  color: AppColors.c1A1A1A,
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Center(
                  child: Image.asset(
                    AssetsIcons.notesIcon,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ),

              UIHelper.verticalSpace(24.h),

             
              Text(
                "NoteFlow",
                style: TextStyle(
                  fontSize: 38.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.c222222,
                ),
              ),

              UIHelper.verticalSpace(10.h),

            
              Text(
                "Capture every thought",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.cA0A0A0,
                  fontWeight: FontWeight.w400,
                ),
              ),

              UIHelper.verticalSpace(180.h),

            
              SpinKitThreeBounce(
                color: AppColors.c1A1A1A,
                size: 22.sp,
              ),

              UIHelper.verticalSpace(40.h),
            ],
          ),
        ),
      ),
    );
  }
}