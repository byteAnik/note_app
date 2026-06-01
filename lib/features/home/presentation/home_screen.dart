import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:note_app/constants/app_colors.dart';
import 'package:note_app/features/add_note/presentation/add_note_screen.dart';
import 'package:note_app/helpers/ui_helpers.dart';




class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

 
  final List<Map<String, dynamic>> notes = [
    {
      "title": "First Note",
      "description": "This is my first note from the app."
    },
    {
      "title": "Study Plan",
      "description": "Complete Flutter, Firebase and GetX practice."
    },
    {
      "title": "Meeting Notes",
      "description": "Discuss project requirements with team."
    },
    {
      "title": "Ideas",
      "description": "Build a full notes app with backend integration."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFAFAFB,

      /// FLOATING BUTTON
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.c1A1A1A,
        onPressed: () {
          Get.to(() => const AddNoteScreen());
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(24.h),

              /// TITLE
              Text(
                "My Notes",
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.c222222,
                ),
              ),

              UIHelper.verticalSpace(6.h),

              Text(
                "All your created notes",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.cA0A0A0,
                ),
              ),

              UIHelper.verticalSpace(20.h),

              /// NOTES LIST
              Expanded(
                child: ListView.separated(
                  itemCount: notes.length,
                  separatorBuilder: (_, __) =>
                      UIHelper.verticalSpace(12.h),
                  itemBuilder: (context, index) {
                    final note = notes[index];

                    return Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(
                          color: AppColors.cE8E8E8,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// TITLE
                          Text(
                            note["title"] ?? "",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.c222222,
                            ),
                          ),

                          UIHelper.verticalSpace(8.h),

                          /// DESCRIPTION
                          Text(
                            note["description"] ?? "",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.cA0A0A0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}