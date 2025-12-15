import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String content;
  final String? link;

  const ResumeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.content,
    this.link,
  });

  // Universal link opener (works for web, android, ios, desktop)
  Future<void> _openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, webOnlyWindowName: '_blank')) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 900),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: isDark ? Colors.grey[900] : Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Subtitle (if exists)
                if (subtitle.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                  ),
                ],

                const SizedBox(height: 8),

                // Main content (with clickable links)
                Text.rich(
                  TextSpan(
                    children: content.split('🔗').map((part) {
                      // Detect lines starting with 'Link:', 'App:', 'Project:', etc.
                      final trimmed = part.trim();
                      if (trimmed.startsWith('Link:') ||
                          trimmed.startsWith('Thirukkural App:') ||
                          trimmed.startsWith('Tamil Dictionary:') ||
                          trimmed.startsWith('Tamil Proverbs:') ||
                          trimmed.startsWith('GitHub:') ||
                          trimmed.startsWith('Project:')) {
                        final parts = trimmed.split(':');
                        if (parts.length >= 2) {
                          final label = parts.first
                              .replaceAll('Link', '')
                              .trim();
                          final url = parts.sublist(1).join(':').trim();
                          return TextSpan(
                            text:
                                '\n🔗 ${label.isNotEmpty ? label : 'View Project'}',
                            style: TextStyle(
                              color: const Color(0xFFDAA520),
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                            recognizer: (TapGestureRecognizer()
                              ..onTap = () => _openLink(url)),
                          );
                        }
                      }
                      // Default text (no link)
                      return TextSpan(
                        text: trimmed.isNotEmpty ? '$trimmed ' : '',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          height: 1.5,
                          color: isDark ? Colors.white70 : Colors.black87,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
