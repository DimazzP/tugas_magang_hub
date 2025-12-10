import 'package:get/get.dart';
import 'package:tugas_magang_hub/domain/entities/product_entity.dart';
import 'package:tugas_magang_hub/domain/usecases/clothes_usecase.dart';

class HomeController extends GetxController {
  final ClothesUsecase clothesUsecase;

  HomeController({required this.clothesUsecase});

  var allProducts = <ProductEntity>[].obs;
  var products = <ProductEntity>[].obs;
  var categories = <String>[].obs;
  var selectedCategory = 'All'.obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final result = await clothesUsecase.fetchAllClothesItems();
      allProducts.value = result;
      products.value = result;

      // Extract unique categories
      extractCategories();

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to load products: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void extractCategories() {
    final categorySet = <String>{};
    for (var product in allProducts) {
      categorySet.add(product.category);
    }
    categories.value = ['All', ...categorySet.toList()];
  }

  void filterByCategory(String category) async {
    selectedCategory.value = category;

    if (category == 'All') {
      products.value = allProducts;
    } else {
      // products.value = allProducts
      //     .where((product) => product.category.toLowerCase() == category.toLowerCase())
      //     .toList();
      products.value = await clothesUsecase.filterClothesCategory(category: category.toLowerCase());
    }
  }

  void refreshProducts() {
    selectedCategory.value = 'All';
    fetchProducts();
  }
}