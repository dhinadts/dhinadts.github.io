import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

// Theme provider
final themeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.light);

// Simple resume data provider (could be extended to fetch from file)
final resumeProvider = Provider<Resume>((ref) {
  return Resume(
    name: 'DHINAKARAN KALAIMANI',
    location: 'Tiruchengode, Tamil Nadu',
    phone: '+91 96770 96359',
    email: 'dhinadts@gmail.com',
    title: 'Flutter Developer',
    summary:
        'Flutter Developer with 4+ years of experience in building scalable, cross-platform apps using Flutter, Dart, and Firebase.',
    skills: [
      'Dart',
      'Flutter',
      'Firebase',
      'Node.js',
      'REST APIs',
      'Git',
      'Material UI',
    ],
    experiences: [
      Experience(
        title:
            'Flutter Developer – Sivisoft Solutions Pvt. Ltd., Chennai (Remote)',
        period: 'Jun 2021 – May 2024',
        details:
            '• Contributed to the development and maintenance of the Memberly app.\n'
            '• Implemented new healthcare and education-related features.\n'
            '• Integrated video consultations, attendance modules, and IoT medical device data visualization and PDF reporting.\n'
            '• Upgraded the application from v1.22.0 to v2.5.0 to v3.5.0 with GetX state management.',
      ),
      Experience(
        title:
            'Junior Software Developer – Nithra Edu Solutions Pvt. Ltd., Tiruchengode',
        period: 'Jun 2019 – Jul 2020',
        details:
            '• Developed iOS apps for Thirukkural, Tamil Dictionary, and Tamil Proverbs using Flutter.\n'
            '🔗 Thirukkural App: https://apps.apple.com/in/app/thirukkural-offline-in-tamil/id1493752033\n'
            '🔗 Tamil Dictionary: https://apps.apple.com/in/app/nithra-tamil-dictionary/id1499946335\n'
            '🔗 Tamil Proverbs: https://apps.apple.com/in/app/tamil-proverbs/id1508276958',
      ),
      Experience(
        title: 'Junior Programmer Analyst – Jaikaal Labs., Sankari',
        period: 'Oct 2018 – May 2019',
        details:
            '• Managed ULZI App on AWS.\n'
            '• Developed RESTful APIs in Node.js with MongoDB and MySQL.\n'
            '• Worked with CI/CD pipelines and error tracking tools.\n'
            '• Built middleware functions using JavaScript.',
      ),
      Experience(
        title:
            'Lead Engineer / Member Technical Staff / Associate MTS – HCL Technologies Ltd.',
        period: 'Mar 2007 – Dec 2010',
        details:
            '• Worked on British Telecom as Support Engineer for database operations.\n'
            '• Developed 8Bit AVI-CODEC in C.',
      ),
    ],
    projects: [
      Project(
        name: 'QTify – Crio.do',
        when: 'May, 25',
        details:
            '• QTify is a song-browsing application built from scratch.\n'
            '• Developed using ReactJS for dynamic and efficient frontend performance.\n'
            '• Integrated Material UI for a modern and responsive design.\n'
            '• Utilized Swiper for smooth and interactive song/album carousels.\n'
            '🔗 Link: https://l-square-q-tify-rose.vercel.app/',
      ),
      Project(
        name: 'XBotAI – Crio.do',
        when: 'Jun, 25',
        details:
            '• XBotAI is an AI-powered chatbot built using ReactJS.\n'
            '• Features a clean and responsive user interface for smooth chat experiences.\n'
            '🔗 Link: https://crio-interview-activities-t7ag.vercel.app/',
      ),
      Project(
        name: 'Medify – Crio.do',
        when: 'Aug, 25',
        details:
            '• Medify is a ReactJS-based landing page for healthcare services.\n'
            '• Allows users to search medical centers across the world.\n'
            '• Enables booking of appointment slots with healthcare providers.\n'
            '• Built with a modern, responsive design for accessibility on all devices.\n'
            '• Focused on enhancing patient convenience and streamlining healthcare access.\n'
            '🔗 Link: https://crio-interview-activities-nioz.vercel.app/',
      ),
      Project(
        name: 'Food Ordering & Table Booking App – Inmakes Infotech Pvt Ltd',
        when: 'Aug, 25',
        details:
            '• Flutter + Firebase powered application inspired by Swiggy.\n'
            '• Offers seamless food ordering and restaurant table booking experiences.\n'
            '• Includes a User App (Flutter Mobile – Android) for customers.\n'
            '• Features an Admin Panel (Flutter Mobile – Android) for real-time management.\n'
            '• Utilizes Firebase Authentication, Firestore, and Firebase Storage for secure and efficient operations.\n'
            '• Ensures smooth, real-time updates between users and restaurants.\n'
            '🔗 Link: https://github.com/dhinadts/food_app',
      ),
      Project(
        name: 'Flutter Tamil Keyboard – Self Motivated Project',
        when: 'Sep, 2025 – Oct, 2025',
        details:
            '• Designed and developed a Tamil typing keyboard using Flutter.\n'
            '• Focused on intuitive layout, responsive key design, and accurate Tamil character mapping.\n'
            '• Integrated Shared Preferences for saving user settings.\n'
            '• Showcased efficient state management and UI/UX implementation in Flutter.\n'
            '🔗 Link: https://github.com/dhinadts/tamil__keyboard',
      ),
    ],

    education: [
      'M.E. – VLSI Design (2013–2015) - 7.3 CGPA- Anna University',
      'B.E. – Electronics & Communication - (2002–2006) - 73% - Anna University',
      'H.S.C. – (2000–2002) - 83% - Tamil Nadu State Board',
      'S.S.L.C. – (1999–2000) - 85% - Tamil Nadu State Board',
    ],
    certifications: [
      'Full Stack Fellowship – Crio.do (July 2024 – Nov 2025)',
      'Flutter Internship Training – Inmakes Infotech Pvt Ltd. (July 2025 – Nov 2025)',
    ],
  );
});

// Data classes
class Resume {
  final String name, location, phone, email, title, summary;
  final List<String> skills;
  final List<Experience> experiences;
  final List<Project> projects;
  final List<String> education;
  final List<String> certifications;

  Resume({
    required this.name,
    required this.location,
    required this.phone,
    required this.email,
    required this.title,
    required this.summary,
    required this.skills,
    required this.experiences,
    required this.projects,
    required this.education,
    required this.certifications,
  });
}

class Experience {
  final String title;
  final String period;
  final String details;
  Experience({
    required this.title,
    required this.period,
    required this.details,
  });
}

class Project {
  final String name;
  final String when;
  final String details;
  Project({required this.name, required this.when, required this.details});
}
