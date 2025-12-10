import 'package:tugas_magang_hub/domain/entities/product_entity.dart';
import 'package:tugas_magang_hub/domain/repository/clothes_repository.dart';

class ClothesRepositoryImpl extends ClothesRepository{
  @override
  Future<List<ProductEntity>> fetchAllClothesItems() {
    // TODO: implement fetchAllClothesItems
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> filterClothesCategory({required String category}) {
    // TODO: implement filterClothesCategory
    throw UnimplementedError();
  }
  // Implementation of clothes repository methods
}