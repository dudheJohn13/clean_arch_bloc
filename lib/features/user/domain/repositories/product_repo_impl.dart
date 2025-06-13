


import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/network/dio_client.dart';
import 'package:flutter_clean_architecture/features/user/data/models/product/product_model.dart';
import 'package:flutter_clean_architecture/features/user/data/repositories/product_repo.dart';

class ProductRepoImpl implements ProductRepository {
  final Dio dio = DioClient().dio;

  @override
  Future<List<ProductModel>> fetchProducts() async {

    final response = await dio.get('/products');
    final data = response.data as List;
    return data.map((e) => ProductModel.fromJson(e)).toList();
  }

}