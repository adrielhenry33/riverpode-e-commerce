import 'package:arq_app/features/products/domain/entities/product_entity.dart';

abstract class IProductRepository {
  Future<List<ProductEntity>> getProductByCategory(String categoria);
}
