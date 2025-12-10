import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:tugas_magang_hub/core/const/app_size.dart';
import 'package:tugas_magang_hub/core/const/card_colors.dart';
import 'package:tugas_magang_hub/core/widgets/widget_shadow.dart';
import 'package:tugas_magang_hub/generated/locale_keys.g.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return Scaffold(
      body: Stack(
        children: [
          // Background gradient with carousel
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 50),

                  // image carousel
                  _buildCarousel(controller),

                  SizedBox(height: 20),

                  // page indicators
                  _buildPageIndicators(controller),

                  SizedBox(height: 40),

                  _buildWelcomeText(),

                  Spacer(),

                  // swipe indicator
                  _buildSwipeIndicator(),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ),

          DraggableScrollableSheet(
            controller: controller.sheetController,
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 0.7,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 20,
                      offset: Offset(0, -5),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      SizedBox(height: 12),
                      Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        LocaleKeys.login_swipeUpLogin.tr(),
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),

                      _buildLoginCard(controller),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCarousel(LoginController controller) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.currentPage.value = index;
        },
        itemCount: controller.previewClothes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  controller.previewClothes[index],
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(child: Icon(Icons.image, size: 100, color: Colors.grey));
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPageIndicators(LoginController controller) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          controller.previewClothes.length,
          (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            width: controller.currentPage.value == index ? 24 : 8,
            height: 8,
            decoration: BoxDecoration(
              color: controller.currentPage.value == index
                  ? Colors.white
                  : Colors.white.withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Text(
            LocaleKeys.login_title.tr(),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            LocaleKeys.login_subtitle.tr(),
            style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildSwipeIndicator() {
    return Column(
      children: [
        Icon(Icons.keyboard_arrow_up_rounded, color: Colors.white, size: 40),
        Text(
          LocaleKeys.login_swipeUpLogin.tr(),
          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildLoginCard(LoginController controller) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            LocaleKeys.login_login.tr(),
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: CardColors.purplePrimary.text),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),

          TextField(
            controller: controller.emailController,
            decoration: InputDecoration(
              labelText: LocaleKeys.login_email.tr(),
              hintText: LocaleKeys.login_enterEmail.tr(),
              prefixIcon: Icon(Icons.email, color: CardColors.purplePrimary.shadow),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.purple, width: 2),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),

          Obx(
            () => TextField(
              controller: controller.passwordController,
              obscureText: controller.isPasswordHidden.value,
              decoration: InputDecoration(
                labelText: LocaleKeys.login_password.tr(),
                hintText: LocaleKeys.login_enterPassword.tr(),
                prefixIcon: Icon(Icons.lock, color: CardColors.purplePrimary.shadow),
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.isPasswordHidden.value ? Icons.visibility_off : Icons.visibility,
                    color: CardColors.purplePrimary.shadow,
                  ),
                  onPressed: controller.togglePasswordVisibility,
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.purple, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          WidgetShadow(
            width: double.infinity,
            cardColor: CardColors.purplePrimary,
            isCanClick: true,
            radius: AppSize.radiusSmallMedium,
            onTap: controller.login,
            child: Center(
              child: Padding(
                padding: AppSize.paddingSmall,
                child: Text(
                  LocaleKeys.login_login.tr(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: CardColors.purplePrimary.text),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
