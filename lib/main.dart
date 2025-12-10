import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_magang_hub/core/const/app_size.dart';
import 'package:tugas_magang_hub/core/const/font_themes.dart';
import 'package:tugas_magang_hub/core/routes/app_routes.dart';
import 'package:tugas_magang_hub/generated/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.initialize(context);
    return GetMaterialApp(
      title: tr(LocaleKeys.title),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: FontThemes.mainFont,
        useMaterial3: true,
      ),
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      initialRoute: AppRoutes.loginRoute,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
