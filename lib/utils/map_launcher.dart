import 'package:url_launcher/url_launcher.dart';

class MapLauncher {
  /// Launches the default map app to show a location.
  ///
  /// [lat] and [lng] are the coordinates of the location.
  /// Returns `true` if the map opened successfully, otherwise throws an error.
  static Future<bool> openLocation({
    required String lat,
    required String lng,
  }) async {
    final Uri googleMapsUri =
        Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lng');

    if (await canLaunchUrl(googleMapsUri)) {
      return launchUrl(googleMapsUri, mode: LaunchMode.externalApplication);
    }

    throw Exception('Could not launch map for location: $lat, $lng');
  }

  /// Opens a map with a custom [label] (optional).
  static Future<bool> openWithLabel({
    required String lat,
    required String lng,
    String? label,
  }) async {
    final encodedLabel = Uri.encodeComponent(label ?? 'Pinned Location');
    final Uri url = Uri.parse(
        'https://www.google.com/maps/search/?api=1&query=$lat,$lng($encodedLabel)');

    if (await canLaunchUrl(url)) {
      return launchUrl(url, mode: LaunchMode.externalApplication);
    }

    throw Exception('Could not launch map with label: $label');
  }
}
