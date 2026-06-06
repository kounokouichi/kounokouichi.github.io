import 'package:url_launcher/url_launcher.dart';

class UrlUtil {
  static Future<void> open(String url) async {
    final uri = Uri.parse(url);

    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
