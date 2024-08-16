import 'package:flutter/material.dart';
import 'package:thecareercompany/mentor/Pages/signin.dart';
import 'package:thecareercompany/user/screen/signinscreen.dart';

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
                  _buildRoleButton(
                    context,
                    title: 'Mentor',
                    description: 'Share your knowledge and guide others.',
                    onTap: () {
                      // Navigate to Mentor registration or related page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen2(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 24),
                  _buildRoleButton(
                    context,
                    title: 'Student',
                    description: 'Find mentors to guide you in your career.',
                    onTap: () {
                      // Navigate to Student registration or related page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
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

  Widget _buildRoleButton(
    BuildContext context, {
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey[300],
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
