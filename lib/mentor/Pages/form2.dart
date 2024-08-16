import 'package:flutter/material.dart';
import 'package:thecareercompany/mentor/Pages/form.dart';
import 'package:thecareercompany/mentor/Pages/form3.dart';

class FormPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Join Us As a Mentor'),
        backgroundColor: const Color.fromARGB(255, 5, 5, 5),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Handle back button press
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionCard(
                title: 'Who do you want to mentor? *',
                child: DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(
                      value: 'Working Professionals',
                      child: Text('Working Professionals'),
                    ),
                    DropdownMenuItem(
                      value: 'Students',
                      child: Text('Students'),
                    ),
                  ],
                  onChanged: (value) {
                    // Handle dropdown change
                  },
                  decoration: InputDecoration(
                    hintText: 'Select an option',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              _buildSectionCard(
                title: 'Student from which kind of Institute? *',
                child: DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(
                      value: 'National Institutes',
                      child: Text('National Institutes'),
                    ),
                    DropdownMenuItem(
                      value: 'State Universities',
                      child: Text('State Universities'),
                    ),
                  ],
                  onChanged: (value) {
                    // Handle dropdown change
                  },
                  decoration: InputDecoration(
                    hintText: 'Select an option',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              _buildSectionCard(
                title: 'What are the things you are interested in? *',
                child: DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(
                      value: 'Career Counselling',
                      child: Text('Career Counselling'),
                    ),
                    DropdownMenuItem(
                      value: 'Technical Skills',
                      child: Text('Technical Skills'),
                    ),
                  ],
                  onChanged: (value) {
                    // Handle dropdown change
                  },
                  decoration: InputDecoration(
                    hintText: 'Select an option',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              _buildSectionCard(
                title: 'How much time you can commit in a week? *',
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your time commitment',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              _buildSectionCard(
                title: 'Select day of your availability *',
                child: DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(
                      value: 'Sunday',
                      child: Text('Sunday'),
                    ),
                    DropdownMenuItem(
                      value: 'Monday',
                      child: Text('Monday'),
                    ),
                  ],
                  onChanged: (value) {
                    // Handle dropdown change
                  },
                  decoration: InputDecoration(
                    hintText: 'Select a day',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              _buildSectionCard(
                title: 'Select Time *',
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your time',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text('Prev'),
                  ),
                  Text('Page 2 of 3', style: TextStyle(fontSize: 16)),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorRegistrationPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 18, 18, 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text('Next', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionCard({required String title, required Widget child}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            child,
          ],
        ),
      ),
    );
  }
}
