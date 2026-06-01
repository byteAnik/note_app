// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class CommonUnitRole extends StatefulWidget {
//   final FocusNode? focusNode;
//   final String hintText;
//   final bool obscureText;
//   final bool isPassword;
//   final TextEditingController? controller;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;
//   final TextInputType keyboardType;
//   final String? Function(String?)? validator;
//   final void Function(String)? onFieldSubmitted;
//   final int? maxLines;
//   final int? maxLength;
//   final bool readOnly;
//   final TextAlign textAlign;
//   final VoidCallback? onTap;

//   const CommonUnitRole({
//     super.key,
//     this.focusNode,
//     required this.hintText,
//     this.textAlign = TextAlign.start,
//     this.obscureText = false,
//     this.isPassword = false,
//     this.controller,
//     this.suffixIcon,
//     this.prefixIcon,
//     this.keyboardType = TextInputType.text,
//     this.validator,
//     this.onFieldSubmitted,
//     this.maxLines = 1,
//     this.maxLength,
//     this.readOnly = false,
//     this.onTap,
//   });

//   @override
//   State<CommonUnitRole> createState() => _CommonUnitRoleState();
// }

// class _CommonUnitRoleState extends State<CommonUnitRole> {
//   late bool _isObscured;

//   @override
//   void initState() {
//     super.initState();
//     _isObscured = widget.obscureText;
//   }

//   void _toggleVisibility() {
//     setState(() {
//       _isObscured = !_isObscured;
//     });
//   }

//   @override
//   void didUpdateWidget(CommonUnitRole oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (!widget.isPassword && oldWidget.obscureText != widget.obscureText) {
//       _isObscured = widget.obscureText;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       focusNode: widget.focusNode,
//       controller: widget.controller,
//       textAlign: widget.textAlign,
//       obscureText: widget.isPassword ? _isObscured : widget.obscureText,
//       keyboardType: widget.keyboardType,
//       validator: widget.validator,
//       onFieldSubmitted: widget.onFieldSubmitted,
//       maxLines: widget.maxLines,
//       maxLength: widget.maxLength,
//       readOnly: widget.readOnly,
//       onTap: widget.onTap,
//       style: TextFontStyle.textStylec24cAsap500c181B25.copyWith(
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w400,
//         color: AppColors.c99A0AE,
//       ),
//       decoration: InputDecoration(
//         hintText: widget.hintText,
//         hintStyle: TextFontStyle.textStylec24cAsap500c181B25.copyWith(
//           fontSize: 16.sp,
//           fontWeight: FontWeight.w400,
//           color: AppColors.c99A0AE,
//         ),
//         filled: true,
//         fillColor: AppColors.cF1F4F8,
//         counterText: '',
//         contentPadding: EdgeInsets.symmetric(
//           horizontal: 14.w,
//           vertical: 12.h,
//         ),
//         prefixIcon: widget.prefixIcon,
//         suffixIcon: widget.suffixIcon ??
//             (widget.isPassword
//                 ? IconButton(
//                     onPressed: _toggleVisibility,
//                     icon: Icon(
//                       _isObscured
//                           ? Icons.visibility_off_outlined
//                           : Icons.visibility_outlined,
//                       color: AppColors.cA7A8AC,
//                       size: 20.sp,
//                     ),
//                   )
//                 : null),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.r),
//           borderSide: BorderSide.none,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.r),
//           borderSide: BorderSide.none,
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.r),
//           borderSide: BorderSide(
//             color: AppColors.cF1F4F8,
//             width: 1,
//           ),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12.r),
//           borderSide: const BorderSide(color: Colors.red),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12.r),
//           borderSide: const BorderSide(color: Colors.red),
//         ),
//       ),
//     );
//   }
// }
