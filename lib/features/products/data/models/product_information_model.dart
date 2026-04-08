import 'package:arq_app/features/products/domain/entities/product_information_entity.dart';

class ProductInformationModel extends ProductInformationEntity {
  ProductInformationModel({
    required super.warrantyInformation,
    required super.shippingInformation,
    required super.availabilityStatus,
  });

  factory ProductInformationModel.fromJson(Map<String, dynamic> json) {
    return ProductInformationModel(
      warrantyInformation:
          json['warrantyInformation'] ?? 'Sem informações de garantia',
      shippingInformation:
          json['shippingInformation'] ?? 'Sem informações de envio',
      availabilityStatus: json['availabilityStatus'] ?? 'Indisponível',
    );
  }
}
