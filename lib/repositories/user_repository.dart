import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mvvm_provider/models/user_model.dart';
import 'package:mvvm_provider/services/api_service.dart';
import 'package:mvvm_provider/utils/constants.dart';

class UserRepository {
  final ApiService _apiService = ApiService();

  /// Fetches a list of users from the API.
  Future<List<User>> getUsers() async {
    final http.Response response = await _apiService.getRequest(usersEndpoint);
    final List<dynamic> jsonData = json.decode(response.body);
    return jsonData.map((e) => User.fromJson(e)).toList();
  }
}
