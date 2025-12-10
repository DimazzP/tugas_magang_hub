import 'package:get/get.dart';
import 'package:tugas_magang_hub/data/datasources/product_remote_datasource.dart';
import 'package:tugas_magang_hub/data/repositories/clothes_repository_impl.dart';
import 'package:tugas_magang_hub/data/services/dio_service.dart';
import 'package:tugas_magang_hub/domain/repository/clothes_repository.dart';
import 'package:tugas_magang_hub/domain/usecases/clothes_usecase.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Service Layer
    Get.lazyPut<DioService>(() => DioService());

    // Data Source Layer
    Get.lazyPut<ProductRemoteDataSource>(
      () => ProductRemoteDataSourceImpl(dioService: Get.find()),
    );

    // Repository Layer
    Get.lazyPut<ClothesRepository>(
      () => ClothesRepositoryImpl(remoteDataSource: Get.find()),
    );

    // UseCase Layer
    Get.lazyPut<ClothesUsecase>(
      () => ClothesUsecase(repository: Get.find()),
    );

    // Controller Layer
    Get.lazyPut<HomeController>(
      () => HomeController(clothesUsecase: Get.find()),
    );
  }
}