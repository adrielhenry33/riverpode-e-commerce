import 'package:arq_app/features/products/domain/entities/product_dimensions_entity.dart';

class ProductDimensionsModel extends ProductDimensionsEntity {
  ProductDimensionsModel({
    required super.width,
    required super.height,
    required super.depth,
  });

  factory ProductDimensionsModel.fromJson(Map<String, dynamic> json) {
    return ProductDimensionsModel(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      depth: (json['depth'] as num).toDouble(),
    );
  }
}
