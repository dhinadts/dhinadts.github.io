import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Projects',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          '• QTify – Crio.do (May 2025): Song browsing app built with ReactJS & Material UI.',
        ),
        Text(
          '• XBotAI – Crio.do (Jun 2025): AI chatbot app using ReactJS with smooth UX.',
        ),
        Text(
          '• Medify – Crio.do (Aug 2025): Healthcare landing page for booking medical appointments.',
        ),
        Text(
          '• Food Ordering & Table Booking App – Inmakes Infotech (Aug 2025): Flutter + Firebase app with real-time restaurant management.',
        ),
      ],
    );
  }
}
