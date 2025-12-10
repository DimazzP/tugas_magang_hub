import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.find<HomeController>();

    return Scaffold(
      body: Center(child: Text('Ini Home'),),
    );
  }
}
