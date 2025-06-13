

import 'package:flutter_clean_architecture/features/user/data/models/product/product_model.dart';

abstract class ProductRepository{
  Future<List<ProductModel>> fetchProducts();
}