import 'package:arq_app/features/cart/data/models/cart_model.dart';
import 'package:arq_app/features/cart/presentation/viewmodel/cart_product_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider =
    StateNotifierProvider<CartProductViewmodel, List<CartProductModel>>(
      (ref) => CartProductViewmodel(),
    );

final findOcurrenceProvider = Provider.family<int, int>((ref, id) {
  final provider = ref.watch(cartProvider);

  try {
    final ocurrence = provider.firstWhere((p) => p.produto.id == id);
    return ocurrence.quantidade;
  } catch (e) {
    return 0;
  }
});
