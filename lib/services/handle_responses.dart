import 'dart:convert';

import 'package:http/http.dart' as http;

http.Response handleResponses(http.Response response) {
  // Check if the response status code indicates success
  if (response.statusCode >= 200 && response.statusCode < 300) {
    return response;
  }

  final String body = response.body;
  dynamic decoded;
  try {
    decoded = jsonDecode(body);
  } catch (_) {
    // fallback if response is not JSON
    decoded = {'message': body};
  }

  final String message = decoded['message'] ?? 'Something went wrong';

  switch (response.statusCode) {
    case 400:
      throw Exception('Bad Request: $message');
    case 401:
      throw Exception('Unauthorized: Please check your credentials');
    case 403:
      throw Exception(
          'Forbidden: You do not have permission to access this resource');
    case 404:
      throw Exception('Not Found: The requested resource could not be found');
    case 500:
      throw Exception('Internal Server Error: Please try again later');
    default:
      throw Exception('Error ${response.statusCode}: $message');
  }
}
