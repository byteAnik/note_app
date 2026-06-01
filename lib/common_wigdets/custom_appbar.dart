// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../constants/app_colors.dart';
// import '../constants/text_font_style.dart';

// class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
//   final String? title;
//   final Color? circleColor;
//   final String? leftIcon;
//   final bool isLeftIcon;
//   final VoidCallback? onTap;
//   final VoidCallback? backOnTap;

//   const CustomAppbar({
//     super.key,
//     this.title,
//     this.leftIcon,
//     this.circleColor,
//     this.onTap,
//     this.backOnTap,
//     this.isLeftIcon = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: AppColors.white,
//       elevation: 0,
//       automaticallyImplyLeading: false,
//       leading: isLeftIcon && leftIcon != null
//           ? GestureDetector(
//         onTap: backOnTap,
//         child: Padding(
//           padding: EdgeInsets.all(12.0.r),
//           child: Image.asset(
//             leftIcon!,
//             height: 18.h,
//             width: 18.w,
//           ),
//         ),
//       )
//           : null,
//       title: Text(
//         title ?? '',
//         style: TextFontStyle.textStyle24Urbanist600cFFFFFF.copyWith(
//           fontWeight: FontWeight.w600,
//           color: AppColors.c000311,
//         ),
//       ),
//       actions: [
//         if (onTap != null && circleColor != null)
//           GestureDetector(
//             onTap: onTap,
//             child: Container(
//               margin: EdgeInsets.only(right: 12.w),
//               height: 32.h,
//               width: 32.w,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: circleColor ?? AppColors.c000311,
//               ),
//               child: Icon(Icons.more_vert, color: Colors.white, size: 20.sp),
//             ),
//           ),
//       ],
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
