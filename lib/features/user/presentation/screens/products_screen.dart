import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/core/di/state_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductScreen extends ConsumerWidget {
  const ProductScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsync = ref.watch(productNotifierProvider);

    ref.listen<AsyncValue>(productNotifierProvider, (previous,next){

      next.whenOrNull(
        data: (state){

          otpSent: () {
            // navigate to different screen
          };

          error : () {

          };


        },
        error: (error, stacktrace){
          handleError();
          only for snack bar / dialog
        }
      );

    });



    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: productAsync.when(
        data:
            (products) => ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return ListTile(
                  title: Text(product.title),
                  onTap: () {
                    ref.read(productNotifierProvider.notifier).refresh();
                  },
                );
              },
            ),
        error: (e, _) => Center(child: Text('Error : $e')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
