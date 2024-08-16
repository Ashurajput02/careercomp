import 'package:flutter/material.dart';
import 'package:thecarriercompny/Pages/form2.dart';

import 'package:thecarriercompny/Pages/mentorhome.dart';

class MentorRegistrationPage extends StatelessWidget {
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
                title: 'Can you give your LinkedIn Profile?',
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your LinkedIn profile URL',
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
                title:
                    'Attach your Photograph*                                 ',
                child: ElevatedButton(
                  onPressed: () {
                    // Handle file selection for photograph
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 18, 18, 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Text('Choose File',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 16),
              _buildSectionCard(
                title:
                    'Attach your Resume*                                      ',
                child: ElevatedButton(
                  onPressed: () {
                    // Handle file selection for resume
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 18, 18, 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Text('Choose File',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 16),
              _buildSectionCard(
                title:
                    'Could you please provide a brief summary of your profile that will be publicly visible to all users?',
                child: TextField(
                  maxLines: 5, // Adjust the number of lines as needed
                  decoration: InputDecoration(
                    hintText: 'Write a brief summary',
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
                      // Handle previous button press
                      // Navigate to previous page if applicable
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormPage2(),
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
                    child: Text('Prev', style: TextStyle(color: Colors.white)),
                  ),
                  Text('Page 3 of 3', style: TextStyle(fontSize: 16)),
                  ElevatedButton(
                    onPressed: () {
                      // Handle submit button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mentorhome(),
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
                    child:
                        Text('Submit', style: TextStyle(color: Colors.white)),
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
