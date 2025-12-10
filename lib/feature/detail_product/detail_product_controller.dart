import 'package:get/get.dart';
import 'package:tugas_magang_hub/domain/entities/product_entity.dart';

class DetailProductController extends GetxController {
  late ProductEntity product;

  @override
  void onInit() {
    super.onInit();
    // Get product from arguments
    if (Get.arguments != null && Get.arguments is ProductEntity) {
      product = Get.arguments as ProductEntity;
    }
  }
}