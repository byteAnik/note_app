// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:svg_flutter/svg.dart';
// import '../constants/text_font_style.dart';

// class CustomTextFormField extends StatefulWidget {
//   final double? height;
//   final double? width;
//   final String? labelText;
//   final String? hintText;
//   final Widget? prefixIcon;
//   final Widget? suffixIcon;
//   final bool obscureText;
//   final TextEditingController? controller;
//   final TextInputType keyboardType;
//   final Function(String)? onChanged;
//   final String? Function(String?)? validator;
//   final bool isPrefixIcon;
//   final AutovalidateMode? autovalidateMode;
//   final double borderRadius;
//   final VoidCallback? onSuffixIconTap;
//   final String? iconpath;
//   final FocusNode? focusNode;
//   final TextInputAction? textInputAction;
//   final Function(String)? onFieldSubmitted;
//   final List<TextInputFormatter>? inputFormatters;
//   final int? maxLine;
//   final bool? isReadOnly;
//   final VoidCallback? onTap;
//   final TextStyle? hintStyle;
//   final TextStyle? style;

//   const CustomTextFormField({
//     super.key,
//     this.labelText,
//     this.hintText,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.obscureText = false,
//     this.autovalidateMode = AutovalidateMode.onUserInteraction,
//     this.controller,
//     this.keyboardType = TextInputType.text,
//     this.onChanged,
//     this.validator,
//     this.borderRadius = 12.0,
//     required this.isPrefixIcon,
//     this.iconpath,
//     this.onSuffixIconTap,
//     this.focusNode,
//     this.onFieldSubmitted,
//     this.inputFormatters,
//     this.textInputAction = TextInputAction.next,
//     this.maxLine = 1,
//     this.isReadOnly = false,
//     this.onTap,
//     this.height,
//     this.width,
//     this.hintStyle,
//     this.style,
//   });

//   @override
//   State<CustomTextFormField> createState() => _CustomTextFormFieldState();
// }

// class _CustomTextFormFieldState extends State<CustomTextFormField> {
//   late FocusNode _internalFocusNode;
//   // ignore: unused_field
//   bool _isFocused = false;
//   bool _isUsingExternalFocusNode = false;

//   @override
//   void initState() {
//     super.initState();
//     _isUsingExternalFocusNode = widget.focusNode != null;
//     _internalFocusNode = widget.focusNode ?? FocusNode();

//     _internalFocusNode.addListener(() {
//       setState(() {
//         _isFocused = _internalFocusNode.hasFocus;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     if (!_isUsingExternalFocusNode) {
//       _internalFocusNode.dispose();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: widget.height,
//       width: widget.width,
//       padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(widget.borderRadius.r),
//         border: Border.all(color: AppColors.cC273E8),
//         color: Colors.transparent,
//       ),
//       child: Center(
//         child: TextFormField(
//           onTap: widget.onTap,
//           readOnly: widget.isReadOnly ?? false,
//           autovalidateMode: widget.autovalidateMode,
//           focusNode: _internalFocusNode,
//           controller: widget.controller,
//           keyboardType: widget.keyboardType,
//           obscureText: widget.obscureText,
//           onChanged: widget.onChanged,
//           validator: widget.validator,
//           inputFormatters: widget.inputFormatters,
//           textInputAction: widget.textInputAction,
//           maxLines: widget.maxLine,
//           onFieldSubmitted: widget.onFieldSubmitted,
//           style: widget.style ??
//               TextFontStyle.textStyle20Urbanist500c262626.copyWith(
//                 color: AppColors.cFDFBFF,
//               ),
//           cursorColor: AppColors.allPrimaryColor,
//           decoration: InputDecoration(
//             isDense: true,
//             filled: false,
//             labelText: widget.labelText,
//             hintText: widget.hintText,
//             hintStyle: widget.hintStyle ??
//                 TextFontStyle.textStyle20Urbanist500c262626.copyWith(
//                   color: AppColors.cA7A8AC,
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w400,
//                 ),
//             prefixIcon: widget.isPrefixIcon && widget.iconpath != null
//                 ? Padding(
//                     padding: const EdgeInsets.only(left: 8, right: 8),
//                     child: SvgPicture.asset(
//                       widget.iconpath!,
//                       width: 20.w,
//                       height: 20.h,
//                     ),
//                   )
//                 : widget.prefixIcon,
//             suffixIcon: widget.suffixIcon != null
//                 ? GestureDetector(
//                     onTap: widget.onSuffixIconTap,
//                     child: widget.suffixIcon!,
//                   )
//                 : null,
//             border: InputBorder.none,
//           ),
//         ),
//       ),
//     );
//   }
// }
