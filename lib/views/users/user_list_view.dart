import 'package:flutter/material.dart';
import 'package:mvvm_provider/utils/common_widgets/custom_app_bar.dart';
import 'package:mvvm_provider/viewmodels/user_viewmodel.dart';
import 'package:mvvm_provider/views/counter_view.dart';
import 'package:mvvm_provider/views/users/user_detail_view.dart';
import 'package:mvvm_provider/views/users/widget/user_card_tile.dart';
import 'package:provider/provider.dart';

class UserListView extends StatefulWidget {
  const UserListView({super.key});

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<UserViewModel>(context, listen: false).loadUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Users',
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CounterView()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<UserViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (viewModel.error != null) {
              return Center(child: Text('Error: ${viewModel.error}'));
            }

            return ListView.builder(
              itemCount: viewModel.users.length,
              itemBuilder: (context, index) {
                final user = viewModel.users[index];

                return UserCardTile(
                  name: user.name,
                  email: user.email,
                  companyName: user.company.name,
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => UserDetailView(user: user),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
