// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class CustomDropdownField extends StatelessWidget {
//   final String label;
//   final String value;
//   final List<String> items;
//   final void Function(String?) onChanged;

//   const CustomDropdownField({
//     super.key,
//     required this.label,
//     required this.value,
//     required this.items,
//     required this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextFontStyle.textStylec18cOpenSans500cF1F1F1,
//         ),
//         SizedBox(height: 8.h),
//         Container(
//           height: 56.h,
//           padding: EdgeInsets.symmetric(horizontal: 18.w),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12.r),
//             border: Border.all(color: AppColors.cC273E8, width: 1.5),
//             color: Colors.transparent,
//           ),
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton<String>(
//               value: value,
//               isExpanded: true,
//               dropdownColor: AppColors.cF1F1F1, // Or match your textfield's bg
//               icon: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white),
//               style: TextFontStyle.textStylec14cOpenSans500cB4B2B5.copyWith(
//                 color: AppColors.cF1F1F1,
//               ),
//               items: items.map((code) {
//                 return DropdownMenuItem<String>(
//                   value: code,
//                   child: Text(
//                     code,
//                     style: TextFontStyle.textStylec14cOpenSans500cB4B2B5.copyWith(
//                       color: AppColors.cF1F1F1,
//                     ),
//                   ),
//                 );
//               }).toList(),
//               onChanged: onChanged,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
