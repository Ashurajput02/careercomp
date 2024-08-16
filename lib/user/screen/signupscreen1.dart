// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:thecareercompany/user/screen/homescreen.dart';

// // class SignUpScreen extends StatefulWidget {
// //   @override
// //   _SignUpScreenState createState() => _SignUpScreenState();
// // }

// // class _SignUpScreenState extends State<SignUpScreen> {
// //   final TextEditingController _nameController = TextEditingController();
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _passwordController = TextEditingController();
// //   final TextEditingController _mobileNumberController = TextEditingController();

// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// //   Future<void> _createAccount() async {
// //     print("hey i  m pressed");
// //     String fullName = _nameController.text.trim();
// //     String email = _emailController.text.trim();
// //     String password = _passwordController.text.trim();
// //     String mobileNumber = _mobileNumberController.text.trim();

// //     // Create a new document in the 'users' collection with the document ID as the user's email
// //     await _firestore.collection('users').doc(email).set({
// //       'fullName': fullName,
// //       'email': email,
// //       'password': password,
// //       'mobileNumber': mobileNumber,
// //     });

// //     // You can then navigate to another screen or show a success message
// //     ScaffoldMessenger.of(context).showSnackBar(
// //       SnackBar(content: Text('Account created successfully!')),
// //     );

// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => HomeScreen()),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Create New Account'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               'Create New Account',
// //               style: TextStyle(
// //                 fontSize: 24,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.teal,
// //               ),
// //             ),
// //             SizedBox(height: 20),
// //             TextField(
// //               controller: _nameController,
// //               decoration: InputDecoration(
// //                 labelText: 'Full Name',
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             TextField(
// //               controller: _passwordController,
// //               obscureText: true,
// //               decoration: InputDecoration(
// //                 labelText: 'Password',
// //                 border: OutlineInputBorder(),
// //                 suffixIcon: Icon(Icons.visibility_off),
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             TextField(
// //               controller: _emailController,
// //               decoration: InputDecoration(
// //                 labelText: 'Email',
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             TextField(
// //               controller: _mobileNumberController,
// //               decoration: InputDecoration(
// //                 labelText: 'Mobile Number',
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             SizedBox(height: 20),
// //             Center(
// //               child: ElevatedButton(
// //                 onPressed: _createAccount,
// //                 child: Text('Sign Up'),
// //                 style: ElevatedButton.styleFrom(
// //                   minimumSize: Size(double.infinity, 50),
// //                   backgroundColor: Colors.teal,
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 20),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Text("Already have an account?"),
// //                 TextButton(
// //                   onPressed: () {
// //                     Navigator.pop(context); // Go back to the Sign-In screen
// //                   },
// //                   child: Text(
// //                     'Sign In',
// //                     style: TextStyle(color: Colors.teal),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:thecareercompany/user/models/userModel.dart';
// import 'package:thecareercompany/user/screen/homescreen.dart';

// class SignUpScreen extends StatefulWidget {
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _mobileNumberController = TextEditingController();

//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> _createAccount() async {
//     print("hey I am pressed");
//     String fullName = _nameController.text.trim();
//     String email = _emailController.text.trim();
//     String password = _passwordController.text.trim();
//     String mobileNumber = _mobileNumberController.text.trim();

//     // Create a new document in the 'users' collection with the document ID as the user's email
//     await _firestore.collection('users').doc(email).set({
//       'fullName': fullName,
//       'email': email,
//       'password': password,
//       'mobileNumber': mobileNumber,
//     });

//     // Create an instance of UserModel
//     UserModel user = UserModel(
//       fullName: fullName,
//       email: email,
//       password: password,
//       mobileNumber: mobileNumber,
//     );

//     // Navigate to HomeScreen and pass the UserModel instance
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => HomeScreen(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Create New Account'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Create New Account',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.teal,
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 labelText: 'Full Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//                 suffixIcon: Icon(Icons.visibility_off),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: _mobileNumberController,
//               decoration: InputDecoration(
//                 labelText: 'Mobile Number',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: ElevatedButton(
//                 onPressed: _createAccount,
//                 child: Text('Sign Up'),
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: Size(double.infinity, 50),
//                   backgroundColor: Colors.teal,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Already have an account?"),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context); // Go back to the Sign-In screen
//                   },
//                   child: Text(
//                     'Sign In',
//                     style: TextStyle(color: Colors.teal),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thecareercompany/user/models/userModel.dart';
import 'package:thecareercompany/user/screen/homescreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _createAccount() async {
    print("hey I am pressed");
    String fullName = _nameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String mobileNumber = _mobileNumberController.text.trim();

    // Create a new document in the 'users' collection with the document ID as the user's email
    await _firestore.collection('users').doc(email).set({
      'fullName': fullName,
      'email': email,
      'password': password,
      'mobileNumber': mobileNumber,
    });

    // Create an instance of UserModel
    UserModel user = UserModel(
      fullName: fullName,
      email: email,
      password: password,
      mobileNumber: mobileNumber,
    );

    // Navigate to HomeScreen and pass the UserModel instance
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600; // Simple check to see if it's a tablet

    return Scaffold(
      appBar: AppBar(
          //title: Text('Create New Account'),
          ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isTablet ? screenWidth * 0.15 : 16.0, // Adjust padding
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create New Account',
              style: TextStyle(
                fontSize: isTablet ? 32 : 24, // Adjust font size
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: isTablet ? 40 : 30),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(fontSize: isTablet ? 20 : 16),
            ),
            SizedBox(height: isTablet ? 20 : 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
              style: TextStyle(fontSize: isTablet ? 20 : 20),
            ),
            SizedBox(height: isTablet ? 20 : 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(fontSize: isTablet ? 20 : 20),
            ),
            SizedBox(height: isTablet ? 20 : 10),
            TextField(
              controller: _mobileNumberController,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(fontSize: isTablet ? 20 : 16),
            ),
            SizedBox(height: isTablet ? 30 : 20),
            Center(
              child: ElevatedButton(
                onPressed: _createAccount,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: isTablet ? 20 : 20, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, isTablet ? 60 : 50),
                  backgroundColor: Colors.black,
                ),
              ),
            ),
            SizedBox(height: isTablet ? 30 : 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: isTablet ? 18 : 14),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Go back to the Sign-In screen
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: isTablet ? 18 : 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
