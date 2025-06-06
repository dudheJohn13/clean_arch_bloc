import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/user/presentation/bloc/user_bloc.dart';
import 'package:flutter_clean_architecture/features/user/presentation/bloc/user_event.dart';
import 'package:flutter_clean_architecture/features/user/presentation/bloc/user_state.dart';

import '../../../../core/di/injection.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<UserBloc>()..add(FetchUsers()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Users')),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (users) {
                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder:
                      (context, index) =>
                          ListTile(title: Text(users[index].name)),
                );
              },
              error: (message) {
                return Center(child: Text(message));
              },
            );

            /* if (state is UserLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is UserLoaded) {
                return ListView.builder(
                  itemCount: state.users.length,
                  itemBuilder: (context, index) =>
                      ListTile(
                        title: Text(state.users[index].name),
                      ),
                );
              } else if (state is UserError) {
                return Center(child: Text(state.message));
              }*/

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
