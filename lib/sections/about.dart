import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'About Me',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Flutter Developer with 4+ years of experience building scalable, cross-platform apps using Flutter, Dart, and Firebase. '
          'Proficient in modern UI/UX, API integration, and full-stack architecture. Proven record of delivering responsive apps and real-time cloud systems.',
        ),
        SizedBox(height: 20),
        Text('📍 Tiruchengode, Tamil Nadu – 637209'),
        Text('📞 +91 96770 96359'),
        Text('✉️ dhinadts@gmail.com'),
        Text('🌐 LinkedIn | GitHub | Crio.do'),
      ],
    );
  }
}
