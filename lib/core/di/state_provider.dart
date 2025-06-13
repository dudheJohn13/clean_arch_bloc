import 'package:flutter_clean_architecture/features/user/data/models/product/product_model.dart';
import 'package:flutter_clean_architecture/features/user/presentation/state_notifiers/product_notifiers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productNotifierProvider =
    AutoDisposeAsyncNotifierProvider<ProductNotifier, List<ProductModel>>(
      () => ProductNotifier()
    );
