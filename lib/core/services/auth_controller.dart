import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/helpers/toast.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;

  Future<void> register(
    String name,
    String email,
    String password,
    BuildContext context,
  ) async {
    try {
      EasyLoading.show(status: 'Creating Account...');
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      await userCredential.user?.updateDisplayName(name);
      
      EasyLoading.dismiss();
      ToastUtil.showShortToast('Account created successfully');
      
      if (context.mounted) {
        context.go('/home');
      }
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      Get.snackbar('Registration Failed', e.message ?? e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      EasyLoading.dismiss();
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> login(
    String email,
    String password,
    BuildContext context,
  ) async {
    try {
      EasyLoading.show(status: 'Logging in...');
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      EasyLoading.dismiss();
      
      if (context.mounted) {
        context.go('/home');
      }
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      Get.snackbar('Login Failed', e.message ?? e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      EasyLoading.dismiss();
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> logout(BuildContext context) async {
    try {
      EasyLoading.show(status: 'Logging out...');
      await _auth.signOut();
      EasyLoading.dismiss();
      
      if (context.mounted) {
        context.go('/login');
      }
    } catch (e) {
      EasyLoading.dismiss();
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }
}
