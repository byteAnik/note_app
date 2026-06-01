// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:note_app/constants/app_constants.dart';
// import 'package:note_app/networks/api_acess.dart';
// import 'package:note_app/networks/dio/dio.dart';


// final class Loading extends StatefulWidget {
//   const Loading({super.key});

//   @override
//   State<Loading> createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     loadInitialData();
//   }

//   Future<void> loadInitialData() async {
//     final accessToken = appData.read(kKeyAccessToken);
//     final isLoggedIn = appData.read(kKeyIsLogin);

//     log("----token--$accessToken");
//     log("----kLoggedIn--$isLoggedIn");

//     // Splash delay
//     await Future.delayed(Durations.extralong2);

//     // Update Dio token
//     if (accessToken != null && accessToken.toString().isNotEmpty) {
//       DioSingleton.instance.update(accessToken);
//     }

//     if (mounted) {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     log("============ Loading screen build method called ================");
//     log("============ my phone: ${appData.read(kPhone)} ================");

//     if (_isLoading) {
//       return const SplashScreen();
//     }

//     /// Check login state
//     final isLoggedIn = appData.read(kKeyIsLogin) == true;
//     final accessToken = appData.read(kKeyAccessToken);

//     if (isLoggedIn &&
//         accessToken != null &&
//         accessToken.toString().isNotEmpty) {
//       return const NavigationBarScreen();
//     }

//     return const SplashScreen();
//   }
// }
