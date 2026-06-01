import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:note_app/common_wigdets/common_button.dart';
import 'package:note_app/common_wigdets/common_textformflied.dart';
import 'package:note_app/constants/app_colors.dart';
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

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  void saveNote() {
    if (_formKey.currentState!.validate()) {
      // TODO: এখানে API / Firebase save logic দিবে

      Get.back(); // save করার পর Home এ ফিরে যাবে
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
          onPressed: () => Get.back(),
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
                  text: 'Save Note',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      
                    }
                  },
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
