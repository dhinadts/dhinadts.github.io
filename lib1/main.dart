import 'package:flutter/material.dart';
import 'sections/about.dart';
import 'sections/skills.dart';
import 'sections/experience.dart';
import 'sections/projects.dart';
import 'sections/educations.dart';
import 'sections/certifications.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dhinakaran Kalaimani | Flutter Developer',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white70),
        ),
      ),
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dhinakaran Kalaimani'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Dhinakaran Kalaimani',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Flutter Developer | Firebase | Parse | ReactJS',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 30),

            AboutSection(),
            Divider(),
            SkillsSection(),
            Divider(),
            ExperienceSection(),
            Divider(),
            ProjectsSection(),
            Divider(),
            EducationSection(),
            Divider(),
            CertificationsSection(),
          ],
        ),
      ),
    );
  }
}
