
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/core/services/auth_controller.dart';
import 'package:note_app/splash_screen.dart';
import 'package:get/get.dart';

final class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    loadInitialData();
  }

  Future<void> loadInitialData() async {
    // Splash delay
    await Future.delayed(Durations.extralong2);

    if (!mounted) return;

    // Check Firebase Auth state
    final authController = Get.put(AuthController());
    final isLoggedIn = authController.currentUser != null;

    if (isLoggedIn) {
      context.go('/home');
    } else {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}