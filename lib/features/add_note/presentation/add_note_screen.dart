import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/common_wigdets/common_button.dart';
import 'package:note_app/common_wigdets/common_textformflied.dart';
import 'package:note_app/constants/app_colors.dart';
import 'package:note_app/features/notes/data/note_repository.dart';
import 'package:note_app/helpers/toast.dart';
import 'package:note_app/helpers/ui_helpers.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  Future<void> saveNote() async {
    if (!_formKey.currentState!.validate() || isLoading) return;

    setState(() {
      isLoading = true;
    });

    try {
      await NoteRepository.instance.addNote(
        title: titleController.text,
        description: descriptionController.text,
      );

      if (!mounted) return;
      ToastUtil.showShortToast('Note saved successfully');
      context.go('/home'); // হোম স্ক্রিনে নিয়ে যাবে
    } catch (error) {
      ToastUtil.showLongToast(error.toString());
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFAFAFB,

      appBar: AppBar(
        backgroundColor: AppColors.cF1F4F8,
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios_new),
          color: AppColors.c222222,
        ),
        title: Text(
          "Add Note",
          style: TextStyle(
            color: AppColors.c222222,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                UIHelper.verticalSpace(8.h),

                /// TITLE FIELD
                CommonTextFormField(
                  label: '',
                  hintText: 'Enter title',
                  controller: titleController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Title is required";
                    }
                    return null;
                  },
                ),

                UIHelper.verticalSpace(16.h),
                CommonTextFormField(
                  label: '',
                  hintText: 'Enter description',
                  controller: descriptionController,
                  maxLines: 5,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Description is required";
                    }
                    return null;
                  },
                ),
                UIHelper.verticalSpace(20.h),
                CommonButton(
                  text: isLoading ? 'Saving...' : 'Save Note',
                  isDisabled: isLoading,
                  onPressed: saveNote,
                ),

                UIHelper.verticalSpace(20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
