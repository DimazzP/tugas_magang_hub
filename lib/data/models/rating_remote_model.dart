import 'package:tugas_magang_hub/domain/entities/rating_entity.dart';

class RatingRemoteModel extends RatingEntity {
  RatingRemoteModel({
    required super.rate,
    required super.count,
  });

  factory RatingRemoteModel.fromJson(Map<String, dynamic> json) {
    return RatingRemoteModel(
      rate: (json['rate'] as num).toDouble(),
      count: json['count'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'count': count,
    };
  }

  RatingEntity toEntity() {
    return RatingEntity(
      rate: rate,
      count: count,
    );
  }
}

