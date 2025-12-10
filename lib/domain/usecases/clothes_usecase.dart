import 'package:tugas_magang_hub/domain/entities/product_entity.dart';
import 'package:tugas_magang_hub/domain/repository/clothes_repository.dart';

class ClothesUsecase{

  final ClothesRepository repository;

  ClothesUsecase({ required this.repository });

  Future<List<ProductEntity>> fetchAllClothesItems(){
    return repository.fetchAllClothesItems();
  }
  Future<List<ProductEntity>> filterClothesCategory({ required String category }){
    return repository.filterClothesCategory(category: category);
  }
}