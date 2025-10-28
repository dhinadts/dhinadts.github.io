import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Technical Skills',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text('Languages: Dart, JavaScript, C, SQL'),
        Text('Frameworks: Flutter, Node.js, Express.js'),
        Text('Cloud/Backend: Firebase, AWS EC2, MongoDB, MySQL'),
        Text('Tools: Jenkins (CI/CD), Git, Sentry, VS Code'),
        Text('UI: HTML5, CSS3, Material UI, Bootstrap, Flutter'),
      ],
    );
  }
}
