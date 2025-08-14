import 'package:flutter/material.dart';
import 'package:mvvm_provider/models/user_model.dart';
import 'package:mvvm_provider/utils/constants.dart';
import 'package:mvvm_provider/utils/sized_box.dart';

class UserHeader extends StatelessWidget {
  final User user;

  const UserHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(profileAvatar),
          ),
          height12,
          Text(
            user.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
