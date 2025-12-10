import 'package:dio/dio.dart';
import 'package:tugas_magang_hub/core/routes/remote_routes.dart';

class DioService {
  late Dio _dio;

  DioService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: RemoteRoutes.home,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Add interceptors for logging
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        logPrint: (obj) => print('[DIO] $obj'),
      ),
    );
  }

  // GET method
  Future<Response> get(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      throw _handleError(e);
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }

  // Error handling
  Exception _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return Exception('Connection timeout. Please check your internet connection.');
      case DioExceptionType.sendTimeout:
        return Exception('Send timeout. Please try again.');
      case DioExceptionType.receiveTimeout:
        return Exception('Receive timeout. Server is taking too long to respond.');
      case DioExceptionType.badResponse:
        return Exception('Server error: ${error.response?.statusCode}');
      case DioExceptionType.cancel:
        return Exception('Request cancelled.');
      case DioExceptionType.connectionError:
        return Exception('No internet connection. Please check your network.');
      default:
        return Exception('Something went wrong: ${error.message}');
    }
  }

  // Get Dio instance (if needed for custom requests)
  Dio get dio => _dio;
}