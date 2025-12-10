import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:tugas_magang_hub/core/routes/app_routes.dart';
import 'package:tugas_magang_hub/generated/locale_keys.g.dart';

class LoginController extends GetxController {
  // Carousel controllers
  late PageController pageController;
  var currentPage = 0.obs;
  Timer? autoScrollTimer;

  // Login form controllers
  late TextEditingController emailController;
  late TextEditingController passwordController;
  var isPasswordHidden = true.obs;
  final email = 'test@example.com';
  final password = '12345678';

  // Draggable sheet controller
  late DraggableScrollableController sheetController;
  var sheetSize = 0.1.obs;

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
    sheetController = DraggableScrollableController();
    startAutoScroll();

    // Listen to sheet size changes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      sheetController.addListener(() {
        if (sheetController.isAttached) {
          sheetSize.value = sheetController.size;
        }
      });
    });
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

  void login() async {
    String inputEmail = emailController.text.trim();
    String inputPassword = passwordController.text.trim();

    // Simple validation
    if (inputEmail.isEmpty) {
      _showErrorDialog(
        LocaleKeys.login_oops.tr(),
        LocaleKeys.login_pleaseEnterEmail.tr(),
      );
      return;
    }

    if (inputPassword.isEmpty) {
      _showErrorDialog(
        LocaleKeys.login_oops.tr(),
        LocaleKeys.login_pleaseEnterPassword.tr(),
      );
      return;
    }

    // Static validation
    if (inputEmail != email || inputPassword != password) {
      _showErrorDialog(
        LocaleKeys.login_loginFailed.tr(),
        LocaleKeys.login_invalidCredentials.tr(),
      );
      return;
    }

    // Login success - animate sheet down before showing success dialog
    await _animateSheetDown();
    _showSuccessDialog();
  }

  Future<void> _animateSheetDown() async {
    if (sheetController.isAttached && sheetSize.value > 0.1) {
      sheetController.animateTo(
        0.1,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
      await Future.delayed(Duration(milliseconds: 400));
    }
  }

  void _showErrorDialog(String title, String message) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.red.shade400, Colors.red.shade600],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error_outline_rounded,
                size: 80,
                color: Colors.white,
              ),
              SizedBox(height: 20),
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () => Get.back(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red.shade600,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  LocaleKeys.login_tryAgain.tr(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
      transitionDuration: Duration(milliseconds: 300),
      transitionCurve: Curves.easeOutBack,
    );
  }

  void _showSuccessDialog() {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.green.shade400, Colors.green.shade600],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle_outline_rounded,
                size: 80,
                color: Colors.white,
              ),
              SizedBox(height: 20),
              Text(
                LocaleKeys.login_success.tr(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Text(
                LocaleKeys.login_loginSuccessMessage.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
              SizedBox(height: 25),
              CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
      transitionDuration: Duration(milliseconds: 300),
      transitionCurve: Curves.easeOutBack,
    );

    // Wait for animation, then navigate
    Future.delayed(Duration(milliseconds: 1500), () {
      Get.back(); // Close dialog
      _navigateToHome();
    });
  }

  void _navigateToHome() {
    Get.offAllNamed(AppRoutes.homeRoute);
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