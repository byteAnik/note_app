// // ignore_for_file: must_be_immutable, unused_field, unrelated_type_equality_checks
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../constants/text_font_style.dart';

// class CustomTextFormFieldOnly extends StatefulWidget {
//   final bool isBorderColor;
//   final String? labelText;
//   final String? hintText;
//   final Widget? prefixIcon;
//   // final IconData? suffixIcon;
//   final Widget? suffixIcon;
//   final bool obscureText;
//   final TextEditingController? controller;
//   final TextInputType keyboardType;
//   final Function(String)? onChanged;
//   final String? Function(String?)? validator;
//   final bool? isPrefixIcon;
//   final AutovalidateMode? autoValidateMode;
//   final double borderRadius;
//   final VoidCallback? onSuffixIconTap;
//   final String? iconPath;
//   final FocusNode? focusNode;
//   TextInputAction? textInputAction;
//   final Function(String)? onFieldSubmitted;
//   List<TextInputFormatter>? inputFormatters;
//   final int? maxLine;
//   final bool? isReadOnly;
//   final VoidCallback? onTap;
//   final bool isRequired;
//   final String? title;
//   final double? titleHeight;
//   final Color? fillColor;
//   final Color? hintTextColor;
//   final Color? titleTextColor;
//   final Color? textActiveColor;
//   final Color? cursorColor;
//   final bool? showPasswordColor;
//   final bool? focusBorder;

//   CustomTextFormFieldOnly({
//     super.key,
//     this.titleHeight = 6,
//     this.labelText,
//     this.hintText,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.obscureText = false,
//     this.autoValidateMode = AutovalidateMode.onUserInteraction,
//     this.controller,
//     this.keyboardType = TextInputType.text,
//     this.onChanged,
//     this.validator,
//     this.borderRadius = 12.0,
//     this.isPrefixIcon,
//     this.iconPath,
//     this.onSuffixIconTap,
//     this.focusNode,
//     this.onFieldSubmitted,
//     this.inputFormatters,
//     this.textInputAction = TextInputAction.next,
//     this.maxLine = 1,
//     this.isReadOnly = false,
//     this.onTap,
//     this.isBorderColor = true,
//     this.isRequired = false,
//     this.title,
//     this.fillColor,
//     this.hintTextColor,
//     this.titleTextColor,
//     this.showPasswordColor,
//     this.textActiveColor,
//     this.cursorColor,
//     this.focusBorder = true,
//   });

//   @override
//   State<CustomTextFormFieldOnly> createState() => _CustomTextFormFieldState();
// }

// class _CustomTextFormFieldState extends State<CustomTextFormFieldOnly> {
//   late FocusNode _focusNode;
//   bool _isFocused = false;

//   @override
//   void initState() {
//     super.initState();
//     _focusNode = FocusNode();
//     _focusNode.addListener(() {
//       setState(() {
//         _isFocused = _focusNode.hasFocus;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _focusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         widget.isRequired
//             ? Container(
//               child:
//                   widget.isRequired
//                       ? Text.rich(
//                         TextSpan(
//                           children: [
//                             TextSpan(
//                               text: widget.title,
//                               style: TextStyle(
//                                 color:
//                                     widget.titleTextColor ??
//                                     Colors.black.withValues(alpha: 100),
//                                 fontSize: 13.sp,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.50,
//                                 letterSpacing: 0.15,
//                               ),
//                             ),
//                             // TextSpan(
//                             //   text: '*',
//                             //   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
//                             // ),
//                           ],
//                         ),
//                       )
//                       : Text(
//                         widget.title!,
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           color: Colors.black.withValues(alpha: 100),
//                           fontSize: 14.sp,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w500,
//                           height: 1.50,
//                           letterSpacing: 0.15,
//                         ),
//                       ),
//             )
//             : SizedBox.shrink(),
//         SizedBox(height: widget.titleHeight),
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(widget.borderRadius),
//           ),
//           child: TextFormField(
//             onTap: widget.onTap,
//             readOnly: widget.isReadOnly ?? false,
//             autovalidateMode: widget.autoValidateMode,
//             focusNode: _focusNode,
//             controller: widget.controller,
//             keyboardType: widget.keyboardType,
//             obscureText: widget.obscureText,
//             onChanged: widget.onChanged,
//             validator: widget.validator,
//             inputFormatters: widget.inputFormatters,
//             textInputAction: widget.textInputAction,
//             maxLines: widget.maxLine,
//             style: TextFontStyle.textStyle20Urbanist500c262626.copyWith(
//               color: widget.textActiveColor ?? AppColors.c000000,
//               fontSize: 14.sp,
//             ),
//             cursorColor: widget.cursorColor ?? AppColors.allPrimaryColor,
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: widget.fillColor ?? AppColors.cF6F6F6,
//               labelText: widget.labelText,
//               hintText: widget.hintText,
//               hintStyle: TextFontStyle.textStyle16Urbanist400c000000
//                   .copyWith(
//                     color: widget.hintTextColor ?? AppColors.c6B6B6B,
//                     fontSize: 13.sp,
//                   ),
//               // prefixIcon: widget.isPrefixIcon! && widget.iconPath != null
//               //     ? Padding(
//               //   padding: const EdgeInsets.only(left: 20, right: 12),
//               //   child: SvgPicture.asset(
//               //     widget.iconPath!,
//               //     width: 24,
//               //   ),
//               // )
//               //     : const SizedBox.shrink(),
//               suffixIcon: widget.suffixIcon,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(widget.borderRadius),
//                 borderSide: BorderSide.none,
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(widget.borderRadius),
//                 borderSide: BorderSide(
//                   width: 1,
//                   color:
//                       widget.isBorderColor
//                           ? AppColors.cC1C1C1
//                           : Colors.transparent,
//                 ),
//               ),
//               focusedBorder:
//                   widget.borderRadius == true
//                       ? OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(
//                           widget.borderRadius,
//                         ),
//                         borderSide: const BorderSide(
//                           width: 1,
//                           color: AppColors.allPrimaryColor,
//                         ),
//                       )
//                       : null,
//               errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(widget.borderRadius),
//                 borderSide: const BorderSide(
//                   width: 1,
//                   color: AppColors.cC1C1C1,
//                 ),
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(widget.borderRadius),
//                 borderSide: const BorderSide(
//                   width: 1,
//                   color: AppColors.cC1C1C1,
//                 ),
//               ),
//               disabledBorder: InputBorder.none,
//               contentPadding: EdgeInsets.symmetric(
//                 horizontal: 12.w,
//                 vertical: 12.h,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
