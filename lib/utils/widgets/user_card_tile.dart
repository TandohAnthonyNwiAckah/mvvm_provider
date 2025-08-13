import 'package:flutter/material.dart';
import 'package:mvvm_provider/utils/app_colors.dart';

class UserCardTile extends StatelessWidget {
  final String name;
  final String email;
  final String companyName;
  final VoidCallback onTap;

  const UserCardTile({
    super.key,
    required this.name,
    required this.email,
    required this.companyName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: onTap,
        title: Text(name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: AppColors.primary)),
        subtitle: Text(email),
        trailing: Text(
          companyName,
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
