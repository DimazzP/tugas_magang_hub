import 'package:tugas_magang_hub/core/routes/remote_routes.dart';
import 'package:tugas_magang_hub/data/models/product_remote_model.dart';
import 'package:tugas_magang_hub/data/services/dio_service.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductRemoteModel>> getProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final DioService dioService;

  ProductRemoteDataSourceImpl({required this.dioService});

  @override
  Future<List<ProductRemoteModel>> getProducts() async {
    try {
      final response = await dioService.get(RemoteRoutes.routes);

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data as List<dynamic>;
        return data.map((json) => ProductRemoteModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error fetching products: $e');
    }
  }
}

