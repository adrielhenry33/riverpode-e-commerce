import 'package:arq_app/features/products/domain/entities/product_review_entity.dart';

class ProductReviewModel extends ProductReviewEntity {
  ProductReviewModel({
    required super.rating,
    required super.comment,
    required super.date,
    required super.reviewerName,
    required super.reviewerEmail,
  });

  factory ProductReviewModel.fromJson(Map<String, dynamic> json) {
    return ProductReviewModel(
      rating: (json['rating']) ?? 0,
      comment: (json['comment']) ?? '',
      date: json['date'] ?? '',
      reviewerName: json['reviewerName'] ?? '',
      reviewerEmail: json['reviewerEmail'] ?? '',
    );
  }
}
