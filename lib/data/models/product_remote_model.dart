import 'package:tugas_magang_hub/data/models/rating_remote_model.dart';
import 'package:tugas_magang_hub/domain/entities/product_entity.dart';

class ProductRemoteModel extends ProductEntity {
  ProductRemoteModel({
    required super.id,
    required super.title,
    required super.price,
    required super.description,
    required super.category,
    required super.image,
    required super.rating,
  });

  factory ProductRemoteModel.fromJson(Map<String, dynamic> json) {
    return ProductRemoteModel(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      rating: RatingRemoteModel.fromJson(json['rating'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'rating': (rating as RatingRemoteModel).toJson(),
    };
  }

  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      price: price,
      description: description,
      category: category,
      image: image,
      rating: rating,
    );
  }
}

