// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:phainistonny_app/constants/app_assets/assets_icons.dart';
// import 'package:phainistonny_app/constants/app_colors.dart';
// import 'package:phainistonny_app/features/brain_sheets_flow/brain_sheets/presentation/brain_sheets_screen.dart';
// import 'package:phainistonny_app/features/home/presentation/home_screen.dart';
// import 'package:phainistonny_app/helpers/helper_methods.dart';
// import 'package:phainistonny_app/helpers/ui_helpers.dart';
// import 'package:phainistonny_app/navigation_menu_widget.dart';

// class NavigationBarScreen extends StatefulWidget {
//   final int? pageNum;

//   const NavigationBarScreen({
//     super.key,
//     this.pageNum,
//   });

//   @override
//   State<NavigationBarScreen> createState() => _NavigationBarScreenState();
// }

// class _NavigationBarScreenState extends State<NavigationBarScreen> {
//   late int _currentIndex;
//   bool _isMenuOpen = false;

//   late List<Widget> _screens;

//   @override
//   void initState() {
//     super.initState();

//     _currentIndex = widget.pageNum ?? 0;

//     _screens = [
//       HomeScreen(),
//       HomeScreen(),
//       const BrainSheetsScreen(),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         showMaterialDialog(context);
//         return false;
//       },
//       child: Scaffold(
//         backgroundColor: AppColors.cFFFFFF,
//         body: IndexedStack(
//           index: _currentIndex,
//           children: _screens,
//         ),
//         bottomNavigationBar: SafeArea(
//           minimum: EdgeInsets.only(bottom: 4.h),
//           child: Padding(
//             padding: EdgeInsets.only(left: 16.w, right: 16.w),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 if (_isMenuOpen) ...[
//                   NavigationMenuWidget(), // ✅ FIXED
//                   UIHelper.verticalSpace(16.h),
//                 ],
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
//                       decoration: BoxDecoration(
//                         color: AppColors.cFFFFFF,
//                         borderRadius: BorderRadius.circular(40.r),
//                         border: Border.all(color: AppColors.cE5E7EB, width: 1),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.08),
//                             blurRadius: 16,
//                             spreadRadius: 2,
//                             offset: const Offset(0, 4),
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           _buildMenuIcon(),
//                           UIHelper.horizontalSpace(16.w),
//                           _buildHomeItem(),
//                           UIHelper.horizontalSpace(16.w),
//                           _buildMicIcon(),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildMenuIcon() {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isMenuOpen = !_isMenuOpen;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.all(12.w),
//         decoration: BoxDecoration(
//           color: _isMenuOpen ? AppColors.c2C5F8D : Colors.transparent,
//           shape: BoxShape.circle,
//         ),
//         child: Image.asset(
//           AssetsIcons.menuIcon,
//           height: 24.h,
//           width: 24.w,
//           color: _isMenuOpen ? AppColors.cFFFFFF : AppColors.c525866,
//         ),
//       ),
//     );
//   }

//   Widget _buildMicIcon() {
//     final isSelected = _currentIndex == 2 && !_isMenuOpen;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isMenuOpen = false;
//           _currentIndex = 2;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.all(12.w),
//         decoration: BoxDecoration(
//           color: isSelected ? AppColors.c2C5F8D : Colors.transparent,
//           shape: BoxShape.circle,
//         ),
//         child: Image.asset(
//           AssetsIcons.micIcon,
//           height: 24.h,
//           width: 24.w,
//           color: isSelected ? AppColors.cFFFFFF : AppColors.c525866,
//         ),
//       ),
//     );
//   }

//   Widget _buildHomeItem() {
//     final isSelected = _currentIndex == 1 && !_isMenuOpen;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _currentIndex = 1;
//           _isMenuOpen = false;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
//         decoration: BoxDecoration(
//           color: isSelected ? AppColors.c2C5F8D : Colors.transparent,
//           borderRadius: BorderRadius.circular(40.r),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(
//               AssetsIcons.homeIcon1,
//               height: 24.h,
//               width: 24.w,
//               color: isSelected ? AppColors.cFFFFFF : AppColors.c525866,
//             ),
//             UIHelper.horizontalSpace(8.w),
//             Text(
//               'Home',
//               style: TextStyle(
//                 color: isSelected ? AppColors.cFFFFFF : AppColors.c525866,
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
