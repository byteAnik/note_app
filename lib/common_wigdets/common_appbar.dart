// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:svg_flutter/svg.dart';

// class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final TextStyle? titleStyle;
//   final bool centerTitle;
//   final bool showBackButton;

//   const CommonAppBar({
//     super.key,
//     required this.title,
//     this.titleStyle,
//     this.centerTitle = true,
//     this.showBackButton = false, // ডিফল্ট false
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: AppColors.allPrimaryColor,
//       elevation: 0,
//       automaticallyImplyLeading: false,
//       // ✅ leading icon conditional
//       leading: showBackButton
//           ? IconButton(
//               icon: SvgPicture.asset(
//                 AssetsIcons.arrow,
//                 width: 24.w,
//                 height: 24.h,
//                 // ignore: deprecated_member_use
//                 color: AppColors.cC273E8,
//               ),
//               onPressed: () => Navigator.pop(context),
//             )
//           : null,
//       title: Text(
//         title,
//         style: titleStyle ??
//             TextFontStyle.textStylec28cPlayfairDisplay700cC273E8.copyWith(
//               color: AppColors.cC273E8,
//               fontSize: 24.sp,
//             ),
//       ),
//       centerTitle: centerTitle,
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }
