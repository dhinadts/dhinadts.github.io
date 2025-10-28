import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers.dart';
import '../widgets/header.dart';
import '../widgets/section.dart';
import '../widgets/resume_card.dart';
import '../utils/responsive.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resume = ref.watch(resumeProvider);
    final isWide = isDisplayDesktop(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Resume - ${resume.name.split(' ').join(" ")}'),
        actions: [
          IconButton(
            tooltip: 'Toggle Theme',
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              final theme = ref.read(themeProvider.notifier);
              theme.state = theme.state == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isWide
            ? SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left column
                      Flexible(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Header(resume: resume),
                            const SizedBox(height: 16),
                            Section(
                              title: 'Summary',
                              child: Text(resume.summary),
                            ),
                            const SizedBox(height: 16),
                            Section(
                              title: 'Skills',
                              child: Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: resume.skills
                                    .map((s) => Chip(label: Text(s)))
                                    .toList(),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Section(
                              title: 'Education',
                              child: Text(resume.education.join('\n')),
                            ),
                            const SizedBox(height: 16),
                            Section(
                              title: 'Certifications',
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors.white70
                                            : Colors.black87,
                                        height: 1.5,
                                      ),
                                      children: [
                                        const TextSpan(
                                          text: 'Full Stack Fellowship – ',
                                        ),
                                        TextSpan(
                                          text: 'Crio.do',
                                          style: const TextStyle(
                                            color: Color(0xFFDAA520), // Gold
                                            fontWeight: FontWeight.w600,
                                            decoration: TextDecoration.none,
                                          ),
                                          recognizer: (TapGestureRecognizer()
                                            ..onTap = () async {
                                              final url = Uri.parse(
                                                'https://www.crio.do',
                                              );
                                              if (await canLaunchUrl(url)) {
                                                launchUrl(url);
                                              }
                                            }),
                                        ),
                                        const TextSpan(text: ' ('),
                                        const TextSpan(
                                          text: 'July 2024 – Nov 2025',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const TextSpan(text: ')'),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors.white70
                                            : Colors.black87,
                                        height: 1.5,
                                      ),
                                      children: [
                                        const TextSpan(
                                          text:
                                              'Flutter Internship Training – ',
                                        ),
                                        TextSpan(
                                          text: 'Inmakes Infotech Pvt Ltd.',
                                          style: const TextStyle(
                                            color: Color(0xFFDAA520),
                                            fontWeight: FontWeight.w600,
                                            decoration: TextDecoration.none,
                                          ),
                                          recognizer: (TapGestureRecognizer()
                                            ..onTap = () async {
                                              final url = Uri.parse(
                                                'https://inmakes.com/',
                                              );
                                              if (await canLaunchUrl(url)) {
                                                launchUrl(url);
                                              }
                                            }),
                                        ),
                                        const TextSpan(text: ' ('),
                                        const TextSpan(
                                          text: 'July 2025 – Nov 2025',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const TextSpan(text: ')'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 24),

                      // Right column
                      Flexible(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Text(
                              'Experience',
                              style: Theme.of(context).textTheme.titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            for (final exp in resume.experiences)
                              ResumeCard(
                                title: exp.title,
                                subtitle: exp.period,
                                content: exp.details,
                              ),
                            const SizedBox(height: 12),
                            Text(
                              'Projects',
                              style: Theme.of(context).textTheme.titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            for (final proj in resume.projects)
                              ResumeCard(
                                title: proj.name,
                                subtitle: proj.when,
                                content: proj.details,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(resume: resume),
                    const SizedBox(height: 12),
                    Section(title: 'Summary', child: Text(resume.summary)),
                    const SizedBox(height: 12),
                    Section(
                      title: 'Skills',
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: resume.skills
                            .map((s) => Chip(label: Text(s)))
                            .toList(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Experience',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    for (final exp in resume.experiences)
                      ResumeCard(
                        title: exp.title,
                        subtitle: exp.period,
                        content: exp.details,
                      ),
                    const SizedBox(height: 12),
                    Text(
                      'Projects',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    for (final proj in resume.projects)
                      ResumeCard(
                        title: proj.name,
                        subtitle: proj.when,
                        content: proj.details,
                      ),
                    const SizedBox(height: 12),
                    Section(
                      title: 'Education',
                      child: Text(resume.education.join('\n')),
                    ),
                    const SizedBox(height: 12),
                    Section(
                      title: 'Certifications',
                      child: Text(resume.certifications.join('\n')),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
