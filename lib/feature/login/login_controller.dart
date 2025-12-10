import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_magang_hub/core/routes/app_routes.dart';

class LoginController extends GetxController {
  // Carousel controllers
  late PageController pageController;
  var currentPage = 0.obs;
  Timer? autoScrollTimer;

  // Login form controllers
  late TextEditingController emailController;
  late TextEditingController passwordController;
  var isPasswordHidden = true.obs;

  final previewClothes = [
    'assets/images/clothes.png',
    'assets/images/bag.png',
    'assets/images/shirt.png',
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
    emailController = TextEditingController();
    passwordController = TextEditingController();
    startAutoScroll();
  }

  void startAutoScroll() {
    autoScrollTimer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentPage.value < previewClothes.length - 1) {
        currentPage.value++;
      } else {
        currentPage.value = 0;
      }

      pageController.animateToPage(
        currentPage.value,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // Simple validation
    if (email.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter your email',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    if (password.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter your password',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    // TODO: Implement actual login logic here
    // For now, just navigate to home
    Get.snackbar(
      'Success',
      'Login successful!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );

    Get.offNamed(AppRoutes.homeRoute);
  }

  @override
  void onClose() {
    autoScrollTimer?.cancel();
    pageController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}