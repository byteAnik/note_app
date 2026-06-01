// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:phainistonny_app/constants/app_colors.dart';
// import 'package:phainistonny_app/constants/text_font_style.dart';
// import 'package:phainistonny_app/helpers/ui_helpers.dart';

// class CommonDropDown extends StatelessWidget {
//   final String label;
//   final String selectedValue;
//   final List<String> items;
//   final Function(String value) onChanged;
//   final TextEditingController controller;

//   const CommonDropDown({
//     super.key,
//     required this.label,
//     required this.selectedValue,
//     required this.items,
//     required this.onChanged,
//     required this.controller,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextFontStyle.textStylec24cAsap500c181B25.copyWith(
//             fontSize: 18.sp,
//             color: AppColors.c181B25,
//           ),
//         ),
//         UIHelper.verticalSpace(8.h),
//         Container(
//           height: 54.h,
//           padding: EdgeInsets.symmetric(horizontal: 14.w),
//           decoration: BoxDecoration(
//             color: AppColors.cF1F4F8,
//             borderRadius: BorderRadius.circular(10.r),
//           ),
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton<String>(
//               value: selectedValue,
//               isExpanded: true,
//               icon: Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 28.sp,
//                 color: AppColors.c181B25,
//               ),
//               dropdownColor: AppColors.cFFFFFF,
//               style: TextFontStyle.textStylec24cAsap500c181B25.copyWith(
//                 fontSize: 18.sp,
//                 color: AppColors.c181B25.withOpacity(0.55),
//               ),
//               items: items.map((item) {
//                 return DropdownMenuItem<String>(
//                   value: item,
//                   child: Text(item),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 if (value != null) {
//                   controller.text = value;
//                   onChanged(value);
//                 }
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
