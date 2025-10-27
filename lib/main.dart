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
          children: const [
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



/* import 'package:flutter/material.dart';

void main() => runApp(const PortfolioApp());

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dhinakaran Kalaimani | Flutter Developer',
      theme: ThemeData.dark(),
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Dhinakaran Kalaimani',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Flutter Developer | Firebase | Parse | ReactJS',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              _sectionTitle('About Me'),
              const Text(
                'Flutter Developer with 4+ years of experience building scalable, cross-platform apps. '
                'Skilled in Firebase, Parse Server, and modern UI/UX design. Passionate about creating innovative, high-performance apps.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              _sectionTitle('Projects'),
              _projectCard(
                'Memberly App – Sivisof',
                'Healthcare-focused Flutter app for community engagement. Integrated Firebase, API connections, and UI enhancements.',
              ),
              _projectCard(
                'Food Ordering & Table Booking App – Inmakes',
                'Flutter + Firebase-powered app with user and admin panels for real-time management.',
              ),
              _projectCard(
                'QTify | XBotAI | Medify – Crio.do',
                'ReactJS projects showcasing frontend, AI chatbot, and healthcare landing page design.',
              ),
              const SizedBox(height: 30),
              _sectionTitle('Contact'),
              const Text('📧 dhinadts@gmail.com'),
              const Text('📞 +91 96770 96359'),
              const Text('🌐 github.com/dhinakaranDTS | linkedin.com/in/dhinakaran-kalaimani'),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _sectionTitle(String title) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      );

  static Widget _projectCard(String title, String description) => Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(description),
            ],
          ),
        ),
      );
}
 */