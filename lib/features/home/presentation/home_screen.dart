import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/constants/app_colors.dart';
import 'package:note_app/features/notes/data/note_model.dart';
import 'package:note_app/features/notes/data/note_repository.dart';
import 'package:note_app/helpers/ui_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFAFAFB,

      /// FLOATING BUTTON
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.c1A1A1A,
        onPressed: () {
          context.push('/add-note');
        },
        child: const Icon(Icons.add, color: Colors.white),
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
                style: TextStyle(fontSize: 14.sp, color: AppColors.cA0A0A0),
              ),

              UIHelper.verticalSpace(20.h),

              /// NOTES LIST
              Expanded(
                child: StreamBuilder<List<NoteModel>>(
                  stream: NoteRepository.instance.watchNotes(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          snapshot.error.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.cA0A0A0,
                          ),
                        ),
                      );
                    }

                    final notes = snapshot.data ?? [];

                    if (notes.isEmpty) {
                      return Center(
                        child: Text(
                          "No notes found",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.cA0A0A0,
                          ),
                        ),
                      );
                    }

                    return ListView.separated(
                      itemCount: notes.length,
                      separatorBuilder: (context, index) =>
                          UIHelper.verticalSpace(12.h),
                      itemBuilder: (context, index) {
                        final note = notes[index];

                        return Container(
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(color: AppColors.cE8E8E8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// TITLE
                              Text(
                                note.title,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.c222222,
                                ),
                              ),

                              UIHelper.verticalSpace(8.h),

                              /// DESCRIPTION
                              Text(
                                note.description,
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
