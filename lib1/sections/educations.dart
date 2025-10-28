import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Education',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          '• M.E. – VLSI Design, Sri Shanmugha College of Engineering (Anna University), 2013–2015, CGPA: 7.37',
        ),
        Text(
          '• B.E. – Electronics & Communication, Sengunthar Engineering College (Anna University), 2002–2006, 73%',
        ),
      ],
    );
  }
}
