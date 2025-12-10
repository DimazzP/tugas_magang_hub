import 'package:tugas_magang_hub/domain/entities/product_entity.dart';

abstract class ClothesRepository {
  Future<List<ProductEntity>> fetchAllClothesItems();
  Future<List<ProductEntity>> filterClothesCategory({ required String category });
}