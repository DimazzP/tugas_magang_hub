import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_magang_hub/core/const/app_size.dart';
import 'package:tugas_magang_hub/core/const/font_themes.dart';
import 'package:tugas_magang_hub/core/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.initialize(context);
    return GetMaterialApp(
      title: 'Tugas Magang Hub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: FontThemes.mainFont,
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.loginRoute,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
