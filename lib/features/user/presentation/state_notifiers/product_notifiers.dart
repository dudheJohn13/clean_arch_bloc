import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architecture/core/di/repoProdvider.dart';
import 'package:flutter_clean_architecture/features/user/data/models/product/product_model.dart';
import 'package:flutter_clean_architecture/features/user/data/repositories/product_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifier extends AutoDisposeAsyncNotifier<List<ProductModel>> {
  late ProductRepository repository;

  @override
  FutureOr<List<ProductModel>> build() {
    repository = ref.read(productRepoProvider);

    return repository.fetchProducts();
  }

  Future<void> fetchProducts() {
    state = const AsyncLoading();

    try {
      final response = repository.fetchProducts();

      if (response.issuccessfull) {
        state = AsyncData(response.data);
      } else {
        state = AsyncError("Error", StackTrace.current);
      }
    } catch (e) {
      state = AsyncError("Error", StackTrace.current);
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();

    state = await AsyncValue.data(repository.fetchProducts());

    state = AsyncError();
  }
}
