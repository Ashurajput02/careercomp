// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:http/http.dart' as http;

// // class ProfilePage extends StatefulWidget {
// //   @override
// //   _ProfilePageState createState() => _ProfilePageState();
// // }

// // class _ProfilePageState extends State<ProfilePage> {
// //   final MyController controller = Get.put(MyController());
// //   String firstName = 'John';
// //   String lastName = 'Doe';
// //   String email = 'john.doe@example.com';
// //   String mobileNumber = '1234567890';
// //   String profilePic = 'default_profile_pic.png'; // Default profile picture
// //   String personality = 'Extrovert';

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchUserProfile();
// //   }

// //   Future<void> fetchUserProfile() async {
// //     // Simulated fetching of user data
// //     setState(() {
// //       // Update with fetched data
// //       firstName = 'Jane';
// //       lastName = 'Smith';
// //       email = 'jane.smith@example.com';
// //       mobileNumber = '0987654321';
// //       profilePic = 'jane_smith_profile_pic.png';
// //       personality = 'Introvert';
// //       controller.light.value = personality == 'Introvert';
// //     });
// //   }

// //   Future<void> pickImageFromGallery() async {
// //     final picker = ImagePicker();
// //     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
// //     if (pickedFile != null) {
// //       // Simulated image upload logic
// //       print('Image selected: ${pickedFile.path}');
// //       // Update profile picture locally
// //       setState(() {
// //         profilePic = pickedFile.path;
// //       });
// //       // Show success message
// //       Get.snackbar("Success", "Image uploaded successfully",
// //           snackPosition: SnackPosition.BOTTOM,
// //           backgroundColor: Colors.green,
// //           colorText: Colors.white,
// //           duration: Duration(seconds: 1));
// //     } else {
// //       print('No image selected');
// //     }
// //   }

// //   Future<void> handleLogout() async {
// //     // Simulated logout logic
// //     print('User logged out');
// //     Get.snackbar("Success", "Logout Successfully",
// //         snackPosition: SnackPosition.BOTTOM,
// //         backgroundColor: Colors.green,
// //         colorText: Colors.white,
// //         duration: Duration(seconds: 1));
// //     Get.offAll(LoginScreen());
// //   }

// //   Future<void> updatePersonality(bool value) async {
// //     // Simulated personality update logic
// //     setState(() {
// //       personality = value ? 'Introvert' : 'Extrovert';
// //     });
// //     print('Personality updated to $personality');
// //     Get.snackbar("Success", "Switched to $personality Mode",
// //         snackPosition: SnackPosition.BOTTOM,
// //         backgroundColor: Colors.green,
// //         colorText: Colors.white,
// //         duration: Duration(seconds: 1));
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     double screenWidth = MediaQuery.of(context).size.width;

// //     // Calculate dimensions based on screen width
// //     double avatarRadius = screenWidth * 0.05;
// //     double iconSize = screenWidth * 0.08;
// //     double titleFontSize = screenWidth * 0.06;
// //     double containerHeight = screenWidth * 0.5;
// //     double subtitleFontSize = screenWidth * 0.04;
// //     double imageWidth = screenWidth * 0.25;
// //     double padding = screenWidth * 0.05;

// //     return Scaffold(
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             SafeArea(
// //               child: Padding(
// //                 padding: EdgeInsets.all(padding),
// //                 child: Row(
// //                   children: [
// //                     GestureDetector(
// //                       onTap: () => Get.back(),
// //                       child: CircleAvatar(
// //                         radius: avatarRadius,
// //                         backgroundColor: Colors.black,
// //                         child: Icon(
// //                           Icons.keyboard_arrow_left,
// //                           color: Colors.white,
// //                           size: iconSize,
// //                         ),
// //                       ),
// //                     ),
// //                     SizedBox(width: padding),
// //                     Text(
// //                       "Profile",
// //                       style: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: titleFontSize,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             Padding(
// //               padding: EdgeInsets.all(padding),
// //               child: Container(
// //                 width: screenWidth,
// //                 height: containerHeight,
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(24),
// //                   color: Colors.grey[200],
// //                 ),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                   children: [
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Text(
// //                           "$firstName $lastName",
// //                           style: TextStyle(
// //                             fontSize: subtitleFontSize * 1.5,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                         SizedBox(height: padding / 4),
// //                         Text(
// //                           email,
// //                           style: TextStyle(fontSize: subtitleFontSize),
// //                         ),
// //                         Text(
// //                           mobileNumber,
// //                           style: TextStyle(fontSize: subtitleFontSize),
// //                         ),
// //                       ],
// //                     ),
// //                     Stack(
// //                       children: [
// //                         Container(
// //                           width: imageWidth,
// //                           height: imageWidth,
// //                           decoration: BoxDecoration(
// //                             border: Border.all(color: Colors.black, width: 1),
// //                             borderRadius: BorderRadius.circular(100),
// //                             image: DecorationImage(
// //                               fit: BoxFit.cover,
// //                               image: AssetImage(profilePic),
// //                             ),
// //                           ),
// //                         ),
// //                         Positioned(
// //                           bottom: 0,
// //                           right: 0,
// //                           child: GestureDetector(
// //                             onTap: pickImageFromGallery,
// //                             child: Container(
// //                               width: imageWidth * 0.3,
// //                               height: imageWidth * 0.3,
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(50),
// //                                 border:
// //                                     Border.all(color: Colors.black, width: 1),
// //                               ),
// //                               child: Icon(Icons.add),
// //                             ),
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             Padding(
// //               padding: EdgeInsets.all(padding),
// //               child: Column(
// //                 children: [
// //                   // _buildProfileOption(
// //                   //   icon: Icons.person,
// //                   //   text: "Extrovert / Introvert",
// //                   //   trailing: Obx(() => Switch(
// //                   //         value: controller.light.value,
// //                   //         onChanged: updatePersonality,
// //                   //         activeColor: Colors.black,
// //                   //       )),
// //                   //   iconSize: iconSize,
// //                   //   padding: padding,
// //                   // ),
// //                   // _buildProfileOption(
// //                   //   icon: Icons.history,
// //                   //   text: "Your order history",
// //                   //   onTap: () => Get.to(OrderHistoryScreen()),
// //                   //   iconSize: iconSize,
// //                   //   padding: padding,
// //                   // ),
// //                   SizedBox(
// //                     height: 10,
// //                   ),
// //                   _buildProfileOption(
// //                     icon: Icons.info,
// //                     text: "About",
// //                     onTap: () => Get.to(AboutScreen()),
// //                     iconSize: iconSize,
// //                     padding: padding,
// //                   ),
// //                   SizedBox(
// //                     height: 10,
// //                   ),
// //                   _buildProfileOption(
// //                     icon: Icons.feedback,
// //                     text: "Send Feedback",
// //                     onTap: () => Get.to(FeedbackScreen()),
// //                     iconSize: iconSize,
// //                     padding: padding,
// //                   ),
// //                   SizedBox(
// //                     height: 10,
// //                   ),
// //                   _buildProfileOption(
// //                     icon: Icons.help,
// //                     text: "Help & FAQs",
// //                     onTap: () => Get.to(HelpScreen()),
// //                     iconSize: iconSize,
// //                     padding: padding,
// //                   ),
// //                   SizedBox(
// //                     height: 10,
// //                   ),
// //                   _buildProfileOption(
// //                     icon: Icons.logout,
// //                     text: "Logout",
// //                     onTap: handleLogout,
// //                     iconSize: iconSize,
// //                     padding: padding,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildProfileOption({
// //     required IconData icon,
// //     required String text,
// //     Widget? trailing,
// //     double? iconSize,
// //     double? padding,
// //     Function()? onTap,
// //   }) {
// //     return GestureDetector(
// //       onTap: onTap,
// //       child: Padding(
// //         padding: EdgeInsets.symmetric(vertical: padding! / 2),
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //           children: [
// //             Row(
// //               children: [
// //                 Icon(icon, size: iconSize, color: Colors.grey[600]),
// //                 SizedBox(width: padding),
// //                 Text(
// //                   text,
// //                   style: TextStyle(fontSize: iconSize! * 0.7),
// //                 ),
// //               ],
// //             ),
// //             if (trailing != null) trailing,
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class MyController extends GetxController {
// //   RxBool light = false.obs;

// //   void toggleLight(bool value) {
// //     light.value = value;
// //   }
// // }

// // class LoginScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(child: Text("Login Screen")),
// //     );
// //   }
// // }

// // class OrderHistoryScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(child: Text("Order History Screen")),
// //     );
// //   }
// // }

// // class AboutScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(child: Text("About Screen")),
// //     );
// //   }
// // }

// // class FeedbackScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(child: Text("Feedback Screen")),
// //     );
// //   }
// // }

// // class HelpScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(child: Text("Help Screen")),
// //     );
// //   }
// // }

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;

// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   final MyController controller = Get.put(MyController());
//   String firstName = 'John';
//   String lastName = 'Doe';
//   String email = 'john.doe@example.com';
//   String mobileNumber = '1234567890';
//   String profilePic = 'default_profile_pic.png'; // Default profile picture
//   String personality = 'Extrovert';

//   @override
//   void initState() {
//     super.initState();
//     fetchUserProfile();
//   }

//   Future<void> fetchUserProfile() async {
//     // Simulated fetching of user data
//     setState(() {
//       // Update with fetched data
//       firstName = 'Jane';
//       lastName = 'Smith';
//       email = 'jane.smith@example.com';
//       mobileNumber = '0987654321';
//       profilePic = 'jane_smith_profile_pic.png';
//       personality = 'Introvert';
//       controller.light.value = personality == 'Introvert';
//     });
//   }

//   Future<void> pickImageFromGallery() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       // Simulated image upload logic
//       print('Image selected: ${pickedFile.path}');
//       // Update profile picture locally
//       setState(() {
//         profilePic = pickedFile.path;
//       });
//       // Show success message
//       Get.snackbar("Success", "Image uploaded successfully",
//           snackPosition: SnackPosition.BOTTOM,
//           backgroundColor: Colors.green,
//           colorText: Colors.white,
//           duration: Duration(seconds: 1));
//     } else {
//       print('No image selected');
//     }
//   }

//   Future<void> handleLogout() async {
//     // Simulated logout logic
//     print('User logged out');
//     Get.snackbar("Success", "Logout Successfully",
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green,
//         colorText: Colors.white,
//         duration: Duration(seconds: 1));
//     Get.offAll(LoginScreen());
//   }

//   Future<void> updatePersonality(bool value) async {
//     // Simulated personality update logic
//     setState(() {
//       personality = value ? 'Introvert' : 'Extrovert';
//     });
//     print('Personality updated to $personality');
//     Get.snackbar("Success", "Switched to $personality Mode",
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green,
//         colorText: Colors.white,
//         duration: Duration(seconds: 1));
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     // Calculate dimensions based on screen width
//     double avatarRadius = screenWidth * 0.05;
//     double iconSize = screenWidth * 0.07; // Reduced icon size slightly
//     double titleFontSize = screenWidth * 0.055; // Reduced title font size
//     double containerHeight = screenWidth * 0.5;
//     double subtitleFontSize = screenWidth * 0.035; // Reduced subtitle font size
//     double imageWidth = screenWidth * 0.25;
//     double padding = screenWidth * 0.05;

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () => Get.back(),
//                       child: CircleAvatar(
//                         radius: avatarRadius,
//                         backgroundColor: Colors.black,
//                         child: Icon(
//                           Icons.keyboard_arrow_left,
//                           color: Colors.white,
//                           size: iconSize,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: padding),
//                     Text(
//                       "Profile",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: titleFontSize,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(padding),
//               child: Container(
//                 width: screenWidth,
//                 height: containerHeight,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(24),
//                   color: Colors.grey[200],
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "$firstName $lastName",
//                           style: TextStyle(
//                             fontSize: subtitleFontSize * 1.5,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: padding / 4),
//                         Text(
//                           email,
//                           style: TextStyle(fontSize: subtitleFontSize),
//                         ),
//                         Text(
//                           mobileNumber,
//                           style: TextStyle(fontSize: subtitleFontSize),
//                         ),
//                       ],
//                     ),
//                     Stack(
//                       children: [
//                         Container(
//                           width: imageWidth,
//                           height: imageWidth,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.black, width: 1),
//                             borderRadius: BorderRadius.circular(100),
//                             image: DecorationImage(
//                               fit: BoxFit.cover,
//                               image: AssetImage(profilePic),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 0,
//                           right: 0,
//                           child: GestureDetector(
//                             onTap: pickImageFromGallery,
//                             child: Container(
//                               width: imageWidth * 0.3,
//                               height: imageWidth * 0.3,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(50),
//                                 border:
//                                     Border.all(color: Colors.black, width: 1),
//                               ),
//                               child: Icon(Icons.add),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(padding),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                   ),
//                   _buildProfileOption(
//                     icon: Icons.info,
//                     text: "About",
//                     onTap: () => Get.to(AboutScreen()),
//                     iconSize: iconSize,
//                     padding: padding,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   _buildProfileOption(
//                     icon: Icons.feedback,
//                     text: "Send Feedback",
//                     onTap: () => Get.to(FeedbackScreen()),
//                     iconSize: iconSize,
//                     padding: padding,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   _buildProfileOption(
//                     icon: Icons.help,
//                     text: "Help & FAQs",
//                     onTap: () => Get.to(HelpScreen()),
//                     iconSize: iconSize,
//                     padding: padding,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   _buildProfileOption(
//                     icon: Icons.logout,
//                     text: "Logout",
//                     onTap: handleLogout,
//                     iconSize: iconSize,
//                     padding: padding,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildProfileOption({
//     required IconData icon,
//     required String text,
//     Widget? trailing,
//     double? iconSize,
//     double? padding,
//     Function()? onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: padding! / 2),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Icon(icon, size: iconSize, color: Colors.grey[600]),
//                 SizedBox(width: padding),
//                 Text(
//                   text,
//                   style: TextStyle(fontSize: iconSize! * 0.7),
//                 ),
//               ],
//             ),
//             if (trailing != null) trailing,
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyController extends GetxController {
//   RxBool light = false.obs;

//   void toggleLight(bool value) {
//     light.value = value;
//   }
// }

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("Login Screen")),
//     );
//   }
// }

// class OrderHistoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("Order History Screen")),
//     );
//   }
// }

// class AboutScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("About Screen")),
//     );
//   }
// }

// class FeedbackScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("Feedback Screen")),
//     );
//   }
// }

// class HelpScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("Help Screen")),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:thecareercompany/user/screen/signinscreen.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final MyController controller = Get.put(MyController());
  String firstName = 'John';
  String lastName = 'Doe';
  String email = 'john.doe@example.com';
  String mobileNumber = '1234567890';
  String profilePic = 'images/user.jpeg'; // Default profile picture
  String personality = 'Extrovert';

  @override
  void initState() {
    super.initState();
    fetchUserProfile();
  }

  Future<void> fetchUserProfile() async {
    // Simulated fetching of user data
    setState(() {
      // Update with fetched data
      firstName = 'Jane';
      lastName = 'Smith';
      email = 'jane.smith@example.com';
      mobileNumber = '0987654321';
      profilePic = 'assets/user.jpeg';
      personality = 'Introvert';
      controller.light.value = personality == 'Introvert';
    });
  }

  Future<void> pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      // Simulated image upload logic
      print('Image selected: ${pickedFile.path}');
      // Update profile picture locally
      setState(() {
        profilePic = pickedFile.path;
      });
      // Show success message
      Get.snackbar("Success", "Image uploaded successfully",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
          duration: Duration(seconds: 1));
    } else {
      print('No image selected');
    }
  }

  Future<void> handleLogout() async {
    // Simulated logout logic
    print('User logged out');
    Get.snackbar("Success", "Logout Successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: Duration(seconds: 1));
    Get.offAll(SignInScreen());
  }

  Future<void> updatePersonality(bool value) async {
    // Simulated personality update logic
    setState(() {
      personality = value ? 'Introvert' : 'Extrovert';
    });
    print('Personality updated to $personality');
    Get.snackbar("Success", "Switched to $personality Mode",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          double screenWidth = MediaQuery.of(context).size.width;

          // Adjust the dimensions for different screen sizes
          double avatarRadius = screenWidth * 0.05;
          double iconSize = screenWidth * 0.07;
          double titleFontSize = screenWidth * 0.055;
          double containerHeight = screenWidth * 0.5;
          double subtitleFontSize = screenWidth * 0.035;
          double imageWidth = screenWidth * 0.25;
          double padding = screenWidth * 0.05;

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            avatarRadius *= 1.5;
            iconSize *= 1.5;
            titleFontSize *= 1.5;
            containerHeight *= 1.5;
            subtitleFontSize *= 1.5;
            imageWidth *= 1.5;
            padding *= 1.5;
          } else if (sizingInformation.deviceScreenType ==
              DeviceScreenType.desktop) {
            avatarRadius *= 2;
            iconSize *= 2;
            titleFontSize *= 2;
            containerHeight *= 2;
            subtitleFontSize *= 2;
            imageWidth *= 2;
            padding *= 2;
          }

          return SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: CircleAvatar(
                            radius: avatarRadius,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: iconSize,
                            ),
                          ),
                        ),
                        SizedBox(width: padding),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: titleFontSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$firstName $lastName",
                              style: TextStyle(
                                fontSize: subtitleFontSize * 1.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: padding / 4),
                            Text(
                              email,
                              style: TextStyle(fontSize: subtitleFontSize),
                            ),
                            Text(
                              mobileNumber,
                              style: TextStyle(fontSize: subtitleFontSize),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: imageWidth,
                              height: imageWidth,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(profilePic),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: GestureDetector(
                                onTap: pickImageFromGallery,
                                child: Container(
                                  width: imageWidth * 0.3,
                                  height: imageWidth * 0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                  ),
                                  child: Icon(Icons.add),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      _buildProfileOption(
                        icon: Icons.info,
                        text: "About",
                        // onTap: () =>
                        iconSize: iconSize,
                        padding: padding,
                      ),
                      SizedBox(height: 10),
                      _buildProfileOption(
                        icon: Icons.feedback,
                        text: "Send Feedback",
                        // onTap: () => Get.to(FeedbackScreen()),
                        iconSize: iconSize,
                        padding: padding,
                      ),
                      SizedBox(height: 10),
                      _buildProfileOption(
                        icon: Icons.help,
                        text: "Help & FAQs",
                        // onTap: () => Get.to(HelpScreen()),
                        iconSize: iconSize,
                        padding: padding,
                      ),
                      SizedBox(height: 10),
                      _buildProfileOption(
                        icon: Icons.logout,
                        text: "Logout",
                        onTap: handleLogout,
                        iconSize: iconSize,
                        padding: padding,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String text,
    Widget? trailing,
    double? iconSize,
    double? padding,
    Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: padding! / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, size: iconSize, color: Colors.grey[600]),
                SizedBox(width: padding),
                Text(
                  text,
                  style: TextStyle(fontSize: iconSize! * 0.7),
                ),
              ],
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  RxBool light = false.obs;

  void toggleLight(bool value) {
    light.value = value;
  }
}
