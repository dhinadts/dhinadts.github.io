import 'package:flutter/material.dart';
import '../providers.dart';

class Header extends StatelessWidget {
  final Resume resume;
  const Header({super.key, required this.resume});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resume.name,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    resume.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 16),
                      SizedBox(width: 4),
                      Text(resume.location),
                      SizedBox(width: 12),
                      Icon(Icons.phone, size: 16),
                      SizedBox(width: 4),
                      Text(resume.phone),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.email, size: 16),
                      SizedBox(width: 4),

                      Text(resume.email),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
