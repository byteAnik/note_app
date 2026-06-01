// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class CommonDropdownField extends StatefulWidget {
//   final List<String> items;
//   final String hintText;
//   final String? labelText;
//   final String? value;
//   final Function(String?) onChanged;
//   final TextEditingController? controller;
//   final String? Function(String?)? validator;
//   final VoidCallback? onTapPicker;

//   const CommonDropdownField({
//     super.key,
//     required this.items,
//     required this.hintText,
//     required this.onChanged,
//     this.labelText,
//     this.value,
//     this.controller,
//     this.validator,
//     this.onTapPicker,
//   });

//   @override
//   State<CommonDropdownField> createState() => _CommonDropdownFieldState();
// }

// class _CommonDropdownFieldState extends State<CommonDropdownField> {
//   String? selectedValue;

//   @override
//   void initState() {
//     super.initState();
//     if (widget.controller != null && widget.controller!.text.isNotEmpty) {
//       selectedValue = widget.controller!.text;
//     } else if (widget.value != null && widget.value!.isNotEmpty) {
//       selectedValue = widget.value;
//     } else {
//       selectedValue = null;
//     }
//   }

//   @override
//   void didUpdateWidget(covariant CommonDropdownField oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.value != oldWidget.value) {
//       setState(() {
//         selectedValue = widget.value;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final bool isPickerField = widget.onTapPicker != null;

//     return FormField<String>(
//       initialValue: selectedValue,
//       validator: widget.validator,
//       builder: (FormFieldState<String> field) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (widget.labelText != null)
//               Padding(
//                 padding: EdgeInsets.only(bottom: 6.h),
//                 child: Text(
//                   widget.labelText!,
//                   style: TextFontStyle.textStylec14cOpenSans400cE6E4E8.copyWith(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 14.sp,
//                   ),
//                 ),
//               ),

//             /// 🔥 UPDATED PART (Picker + Dropdown both supported)
//             GestureDetector(
//               behavior: HitTestBehavior.opaque,
//               onTap: widget.onTapPicker,
//               child: Container(
//                 height: 48.h,
//                 padding: EdgeInsets.symmetric(horizontal: 12.w),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: field.hasError ? Colors.red : AppColors.cC273E8,
//                   ),
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child:
//                           isPickerField
//                               /// 👉 COUNTRY PICKER TEXT DISPLAY
//                               ? Text(
//                                 selectedValue ?? widget.hintText,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextFontStyle
//                                     .textStylec14cOpenSans400cE6E4E8
//                                     .copyWith(
//                                       color:
//                                           selectedValue == null
//                                               ? AppColors.c9E9E9E
//                                               : AppColors.cE6E4E8,
//                                     ),
//                               )
//                               /// 👉 NORMAL DROPDOWN
//                               : DropdownButtonHideUnderline(
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   dropdownColor: AppColors.allPrimaryColor,
//                                   icon: const SizedBox.shrink(), // 🔥 FIX
//                                   value: selectedValue,
//                                   hint: Text(
//                                     widget.hintText,
//                                     overflow: TextOverflow.ellipsis,
//                                     style:
//                                         TextFontStyle
//                                             .textStylec14cOpenSans400cE6E4E8,
//                                   ),
//                                   onChanged: (value) {
//                                     setState(() => selectedValue = value);
//                                     if (widget.controller != null &&
//                                         value != null) {
//                                       widget.controller!.text = value;
//                                     }
//                                     widget.onChanged(value);
//                                     field.didChange(value);
//                                   },
//                                   items:
//                                       widget.items
//                                           .map(
//                                             (item) => DropdownMenuItem<String>(
//                                               value: item,
//                                               child: Text(
//                                                 item,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 style:
//                                                     TextFontStyle
//                                                         .textStylec14cOpenSans400cE6E4E8,
//                                               ),
//                                             ),
//                                           )
//                                           .toList(),
//                                 ),
//                               ),
//                     ),
//                     const Icon(
//                       Icons.keyboard_arrow_down,
//                       color: AppColors.cC273E8,
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             if (field.hasError)
//               Padding(
//                 padding: EdgeInsets.only(top: 4.h, left: 4.w),
//                 child: Text(
//                   field.errorText!,
//                   style: TextFontStyle.textStylec14cOpenSans400cE6E4E8.copyWith(
//                     color: Colors.red,
//                     fontSize: 12.sp,
//                   ),
//                 ),
//               ),
//           ],
//         );
//       },
//     );
//   }
// }
