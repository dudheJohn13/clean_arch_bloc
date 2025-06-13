

import 'package:flutter_clean_architecture/features/user/domain/repositories/product_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productRepoProvider = Provider((ref) => ProductRepoImpl());