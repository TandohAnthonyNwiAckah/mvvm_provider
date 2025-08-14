import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_provider/models/user_model.dart';
import 'package:mvvm_provider/utils/common_widgets/custom_app_bar.dart';
import 'package:mvvm_provider/utils/map_launcher.dart';
import 'package:mvvm_provider/utils/sized_box.dart';
import 'package:mvvm_provider/views/counter_view.dart';
import 'package:mvvm_provider/views/users/widget/info_card.dart';
import 'package:mvvm_provider/views/users/widget/user_header.dart';
import 'package:mvvm_provider/views/users/widget/user_info_tile.dart';

class UserDetailView extends StatelessWidget {
  final User user;

  const UserDetailView({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final address = user.address;
    final geo = address.geo;

    return Scaffold(
      appBar: CustomAppBar(
        title: user.name,
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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                UserHeader(user: user),
                height20,
                InfoCard(
                  title: 'Contact Info',
                  children: [
                    UserInfoTile(label: 'Username', value: user.username),
                    UserInfoTile(label: 'Email', value: user.email),
                    UserInfoTile(label: 'Phone', value: user.phone),
                    UserInfoTile(label: 'Website', value: user.website),
                  ],
                ),
                height16,
                InfoCard(
                  title: 'Address',
                  children: [
                    UserInfoTile(label: 'Street', value: address.street),
                    UserInfoTile(label: 'Suite', value: address.suite),
                    UserInfoTile(label: 'City', value: address.city),
                    UserInfoTile(label: 'Zipcode', value: address.zipcode),
                    UserInfoTile(
                        label: 'Coordinates', value: '${geo.lat}, ${geo.lng}'),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.map),
                        label: const Text('View on Map'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(48),
                        ),
                        onPressed: () async {
                          try {
                            await MapLauncher.openLocation(
                              lat: geo.lat,
                              lng: geo.lng,
                            );
                          } catch (e) {
                            if (kDebugMode) {
                              print('Error opening map: $e');
                            }
                          }
                        },
                      ),
                    ),
                  ],
                ),
                height16,
                InfoCard(
                  title: 'Company',
                  children: [
                    UserInfoTile(label: 'Name', value: user.company.name),
                    UserInfoTile(
                        label: 'Catchphrase', value: user.company.catchPhrase),
                    UserInfoTile(label: 'Business', value: user.company.bs),
                  ],
                ),
                height100
              ],
            ),
          ),
        ],
      ),
    );
  }
}
