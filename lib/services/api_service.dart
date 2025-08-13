import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mvvm_provider/services/handle_responses.dart';
import 'package:mvvm_provider/utils/constants.dart';

class ApiService {
  // Header for all requests
  final Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // GET request
  Future<http.Response> getRequest(
    String endpoint, {
    Map<String, String>? queryParams,
  }) async {
    try {
      final uri =
          Uri.parse('$baseUrl$endpoint').replace(queryParameters: queryParams);
      final response = await http.get(uri, headers: headers);
      return handleResponses(response);
    } catch (e) {
      rethrow;
    }
  }

  // POST request
  Future<http.Response> postRequest(
    String endpoint,
    Map<String, dynamic> data,
  ) async {
    try {
      final uri = Uri.parse('$baseUrl$endpoint');
      final response = await http.post(
        uri,
        headers: headers,
        body: jsonEncode(data),
      );
      return handleResponses(response);
    } catch (e) {
      rethrow;
    }
  }

  // PUT request
  Future<http.Response> putRequest(
    String endpoint,
    Map<String, dynamic> data,
  ) async {
    try {
      final uri = Uri.parse('$baseUrl$endpoint');
      final response = await http.put(
        uri,
        headers: headers,
        body: jsonEncode(data),
      );
      return handleResponses(response);
    } catch (e) {
      rethrow;
    }
  }

  //  DELETE request
  Future<http.Response> deleteRequest(String endpoint) async {
    try {
      final uri = Uri.parse('$baseUrl$endpoint');
      final response = await http.delete(uri, headers: headers);
      return handleResponses(response);
    } catch (e) {
      rethrow;
    }
  }
}
