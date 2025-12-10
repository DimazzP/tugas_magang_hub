import 'package:get/get.dart';
import 'package:tugas_magang_hub/feature/detail_product/detail_product_binding.dart';
import 'package:tugas_magang_hub/feature/detail_product/detail_product_page.dart';
import 'package:tugas_magang_hub/feature/home/home_binding.dart';
import 'package:tugas_magang_hub/feature/home/home_page.dart';
import 'package:tugas_magang_hub/feature/login/login_binding.dart';
import 'package:tugas_magang_hub/feature/login/login_page.dart';

class AppRoutes {
  static const String homeRoute = '/home';
  static const String loginRoute = '/login';
  static const String detailProductRoute = '/detail_product';

  static final routes = <GetPage>[

    GetPage(
      name: homeRoute,
      page: () => HomePage(),
      binding: HomeBinding(),
      transition: Transition.downToUp,
      transitionDuration: Duration(milliseconds: 600),
    ),

    GetPage(name: loginRoute, page: () => LoginPage(), binding: LoginBinding()),

    GetPage(
      name: detailProductRoute,
      page: () => DetailProductPage(),
      binding: DetailProductBinding(),
    ),
  ];
}
