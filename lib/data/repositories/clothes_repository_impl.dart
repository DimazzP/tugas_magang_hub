import 'package:tugas_magang_hub/data/datasources/product_remote_datasource.dart';
import 'package:tugas_magang_hub/domain/entities/product_entity.dart';
import 'package:tugas_magang_hub/domain/repository/clothes_repository.dart';

class ClothesRepositoryImpl implements ClothesRepository {
  final ProductRemoteDataSource remoteDataSource;

  ClothesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ProductEntity>> fetchAllClothesItems() async {
    try {
      final products = await remoteDataSource.getProducts();
      return products.map((model) => model.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }

  @override
  Future<List<ProductEntity>> filterClothesCategory({required String category}) async {
    try {
      final products = await remoteDataSource.getProducts();
      final filteredProducts = products
          .where((product) => product.category.toLowerCase() == category.toLowerCase())
          .toList();
      return filteredProducts.map((model) => model.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to filter products by category: $e');
    }
  }
}