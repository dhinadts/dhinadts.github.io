import 'package:flutter/material.dart';

class CertificationsSection extends StatelessWidget {
  const CertificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Certifications',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text('• Full Stack Fellowship – Crio.do (Jul 2024 – Nov 2025)'),
        Text(
          '• Flutter Internship – Inmakes Infotech Pvt. Ltd. (Jul 2025 – Nov 2025)',
        ),
      ],
    );
  }
}
