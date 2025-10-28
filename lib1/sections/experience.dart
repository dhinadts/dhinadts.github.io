import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Experience',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          '• Flutter Developer – Sivisoft Solutions Pvt. Ltd. (Remote) | Jun 2021 – May 2024',
        ),
        Text(
          '  Developed and maintained the Memberly app with healthcare features, integrated IoT medical data, and upgraded Flutter versions with GetX.',
        ),
        SizedBox(height: 10),
        Text(
          '• Junior Software Developer – Nithra Edu Solutions Pvt. Ltd. | Jun 2019 – Jul 2020',
        ),
        Text(
          '  Built iOS apps like Thirukkural, Tamil Dictionary, and Tamil Proverbs using Flutter.',
        ),
        SizedBox(height: 10),
        Text(
          '• Junior Programmer Analyst – Jaikaal Labs | Oct 2018 – May 2019',
        ),
        Text(
          '  Managed ULZI app on AWS, developed REST APIs, and implemented CI/CD pipelines.',
        ),
        SizedBox(height: 10),
        Text(
          '• Lead Engineer / Member Technical Staff – HCL Technologies Ltd. | Mar 2007 – Dec 2010',
        ),
        Text(
          '  Supported British Telecom operations, database management, and 8Bit AVI-CODEC in C.',
        ),
      ],
    );
  }
}
