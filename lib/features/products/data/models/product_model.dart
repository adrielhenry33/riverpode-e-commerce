import 'package:arq_app/features/products/data/models/product_dimensions_model.dart';
import 'package:arq_app/features/products/data/models/product_information_model.dart';
import 'package:arq_app/features/products/data/models/product_review.dart';
import 'package:arq_app/features/products/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required super.brand,
    required super.sku,
    required super.weight,
    required super.rating,
    required super.stock,
    required super.tags,
    required super.id,
    required super.title,
    required super.price,
    required super.discountPercentage,
    required super.description,
    required super.category,
    required super.images,
    required super.dimension,
    required super.reviews,
    required super.information,
    required super.thumbnail,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: (json['price'] as num).toDouble(),
      description: json['description'],
      category: json['category'],
      images: List<String>.from(json['images'] ?? []),
      rating: (json['rating'] as num).toDouble(),
      stock: json['stock'] ?? 0,
      tags: List<String>.from(json['tags'] ?? []),
      discountPercentage: json['discountPercentage'] * 1.0,
      brand: json['brand'] ?? '',
      sku: json['sku'] ?? '',
      weight: json['weight'],
      dimension: ProductDimensionsModel.fromJson(json['dimensions']),
      reviews: (json['reviews'] as List)
          .map((item) => ProductReviewModel.fromJson(item))
          .toList(),
      information: ProductInformationModel.fromJson(json),
      thumbnail: json['thumbnail'],
    );
  }
}
