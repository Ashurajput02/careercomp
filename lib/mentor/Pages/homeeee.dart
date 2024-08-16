import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mentor or Student Choice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChooseRolePage(),
    );
  }
}

class ChooseRolePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Role'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Are you a Mentor or a Student?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildRoleCard(
                    context,
                    title: 'Mentor',
                    description: 'Share your knowledge and guide others.',
                    imagePath:
                        'assets/mentor.png', // Make sure to add this asset
                    onTap: () {
                      // Navigate to Mentor registration or related page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorRegistrationPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 24),
                  _buildRoleCard(
                    context,
                    title: 'Student',
                    description: 'Find mentors to guide you in your career.',
                    imagePath:
                        'assets/student.png', // Make sure to add this asset
                    onTap: () {
                      // Navigate to Student registration or related page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentRegistrationPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoleCard(
    BuildContext context, {
    required String title,
    required String description,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                imagePath,
                height: 120,
                width: 180,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
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

// Dummy pages for demonstration
class MentorRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mentor Registration'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Mentor Registration Page'),
      ),
    );
  }
}

class StudentRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Registration'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Student Registration Page'),
      ),
    );
  }
}
