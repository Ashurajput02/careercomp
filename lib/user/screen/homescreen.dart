// // import 'package:flutter/material.dart';

// // class HomeScreen extends StatefulWidget {
// //   @override
// //   State<StatefulWidget> createState() {
// //     // TODO: implement createState
// //     throw UnimplementedError();
// //   }
// // }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   final TextEditingController _controller = TextEditingController();
//   List<Map<String, String>> courses = [
//     {
//       "mentorName": "Ritesh Gupta",
//       "experience": "6 yrs",
//       "position": "Senior Manager - Growth Strategy and Partnerships at Airtel",
//       "qualification": "MBA",
//       "sector": "Healthcare, Telecom, and BFSI",
//       "help": "Interview Preparation",
//       "summary":
//           "I am a seasoned mentor with a proven track record of guiding 500+ students from India's top business schools including IIMs, IMT, IMI, and MICA. My expertise lies in interview and group discussion preparation...",
//     },
//     // Add more course data here
//   ];

//   int hour = DateTime.now().hour;

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Greeting Text
//               Text(
//                 'Good ${hour < 12 ? 'Morning' : hour < 18 ? 'Afternoon' : 'Evening'}',
//                 style: GoogleFonts.poppins(
//                   fontSize: screenSize.width * 0.08, // Responsive font size
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Search for Mentors Card
//               GestureDetector(
//                 onTap: () {
//                   print("Hello");
//                 },
//                 child: Container(
//                   height: screenSize.height * 0.1,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[800],
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Search for Mentors",
//                           style: GoogleFonts.poppins(
//                             fontSize:
//                                 screenSize.width * 0.05, // Responsive font size
//                             fontWeight: FontWeight.w600,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const Icon(
//                           Icons.assistant_outlined,
//                           color: Colors.white,
//                           size: 40,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),

//               // Slideshow
//               Center(
//                 child: Container(
//                   height: screenSize.height * 0.25,
//                   width: screenSize.width * 0.9,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.grey[800], // Use a gray background color
//                   ),
//                   child: ImageSlideshow(
//                     width: screenSize.width * 0.9,
//                     height: screenSize.height * 0.25,
//                     initialPage: 0,
//                     indicatorColor: Colors.white,
//                     indicatorBackgroundColor: Colors.grey[600],
//                     children: [
//                       _buildSlideshowItem(
//                         "What are stocks?",
//                         "A share in the ownership of a company, including a claim on the company's earnings and assets.",
//                         screenSize,
//                       ),
//                       _buildSlideshowItem(
//                         "Loan tip",
//                         "Getting money without any security from the Bank via a Personal Loan is cheaper than borrowing from private agencies.",
//                         screenSize,
//                       ),
//                       _buildSlideshowItem(
//                         "Beware of little expenses. A small leak will sink a great ship.",
//                         "-Benjamin Franklin",
//                         screenSize,
//                       ),
//                       _buildSlideshowItem(
//                         "Indian market is one of the most attractively priced in the world today",
//                         "-Porinju Veliyath",
//                         screenSize,
//                       ),
//                       _buildSlideshowItem(
//                         "It's not your salary that makes you rich, it's your spending habits.",
//                         "- Charles A.Jaffe",
//                         screenSize,
//                       ),
//                     ],
//                     isLoop: true,
//                     autoPlayInterval: 5000,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),

//               // Popular Courses Title
//               Text(
//                 "Popular Mentors",
//                 style: GoogleFonts.poppins(
//                   fontSize: screenSize.width * 0.06, // Responsive font size
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // ListView.builder for Popular Courses
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics:
//                     const NeverScrollableScrollPhysics(), // Prevents scrolling inside ListView
//                 itemCount: courses.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 10.0),
//                     child: _buildCourseCard(screenSize, courses[index]),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSlideshowItem(
//       String title, String description, Size screenSize) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: 20),
//         Padding(
//           padding: const EdgeInsets.only(left: 8.0),
//           child: Text(
//             title,
//             style: GoogleFonts.poppins(
//               fontSize: screenSize.width * 0.05, // Responsive font size
//               fontWeight: FontWeight.w600,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             description,
//             style: GoogleFonts.poppins(
//               fontSize: screenSize.width * 0.03, // Responsive font size
//               fontWeight: FontWeight.w400,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCourseCard(Size screenSize, Map<String, String> course) {
//     return Card(
//       elevation: 4.0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       color: Colors.grey[800], // Gray color for the card background
//       child: Container(
//         width: screenSize.width * 0.9, // Responsive width
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 const CircleAvatar(
//                   radius: 30,
//                   backgroundImage: AssetImage('assets/profile_pic.png'),
//                   backgroundColor: Colors.white, // White border
//                 ),
//                 const SizedBox(width: 16.0),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         course['mentorName']!,
//                         style: TextStyle(
//                           fontSize:
//                               screenSize.width * 0.045, // Responsive font size
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(height: 4.0),
//                       Text(
//                         course['experience']!,
//                         style: TextStyle(
//                           fontSize:
//                               screenSize.width * 0.035, // Responsive font size
//                           color: Colors.grey[400],
//                         ),
//                       ),
//                       const SizedBox(height: 4.0),
//                       Text(
//                         course['position']!,
//                         style: TextStyle(
//                           fontSize:
//                               screenSize.width * 0.035, // Responsive font size
//                           color: Colors.grey[400],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//             _buildRichText(
//                 "Qualification: ", course['qualification']!, screenSize),
//             const SizedBox(height: 8.0),
//             _buildRichText("Sector expertise: ", course['sector']!, screenSize),
//             const SizedBox(height: 8.0),
//             _buildRichText("How he can help: ", course['help']!, screenSize),
//             const SizedBox(height: 8.0),
//             _buildRichText(
//               "Summary: ",
//               course['summary']!,
//               screenSize,
//             ),
//             const SizedBox(height: 8.0),
//             Align(
//               alignment: Alignment.centerRight,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Add your book logic here
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(4.0),
//                     side: const BorderSide(color: Colors.black),
//                   ),
//                 ),
//                 child: Text(
//                   'Book',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: screenSize.width * 0.04, // Responsive font size
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildRichText(String label, String value, Size screenSize) {
//     return Text.rich(
//       TextSpan(
//         children: [
//           TextSpan(
//             text: label,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: screenSize.width * 0.04, // Responsive font size
//               color: Colors.white,
//             ),
//           ),
//           TextSpan(
//             text: value,
//             style: TextStyle(
//               fontSize: screenSize.width * 0.04, // Responsive font size
//               color: Colors.grey[400],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:thecareercompany/user/screen/profilescreen.dart';
import 'package:thecareercompany/user/screen/slot.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> mentors = [
    {
      "mentorName": "John Doe",
      "experience": "5 yrs",
      "position": "Senior Consultant at XYZ Corp",
      "qualification": "MBA",
      "sector": "Finance",
      "help": "Career Coaching",
      "summary":
          "John has extensive experience in career coaching and financial consulting. He has worked with numerous professionals to help them achieve their career goals.",
    },
    {
      "mentorName": "Jane Smith",
      "experience": "8 yrs",
      "position": "Lead Developer at ABC Inc.",
      "qualification": "MSc in Computer Science",
      "sector": "Technology",
      "help": "Technical Skills Development",
      "summary":
          "Jane specializes in developing technical skills and has helped many individuals advance in their tech careers through targeted coaching and mentorship.",
    },
    {
      "mentorName": "Emily Johnson",
      "experience": "7 yrs",
      "position": "Marketing Specialist at DEF Ltd.",
      "qualification": "BBA",
      "sector": "Marketing",
      "help": "Marketing Strategy and Execution",
      "summary":
          "Emily offers expert guidance on marketing strategies and has a proven track record of helping businesses improve their marketing efforts.",
    },
    {
      "mentorName": "Michael Brown",
      "experience": "10 yrs",
      "position": "Product Manager at GHI Corp.",
      "qualification": "MBA",
      "sector": "Product Management",
      "help": "Product Development and Management",
      "summary":
          "Michael is an expert in product management and has led multiple successful product launches in the tech industry.",
    },
    {
      "mentorName": "Sophia Lee",
      "experience": "6 yrs",
      "position": "HR Manager at JKL Enterprises",
      "qualification": "MHRM",
      "sector": "Human Resources",
      "help": "Career Development and Recruitment",
      "summary":
          "Sophia provides insights into career development and recruitment processes, helping candidates and companies align their goals effectively.",
    },
  ];

  int hour = DateTime.now().hour;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting Text
              Row(
                children: [
                  Text(
                    'Good ${hour < 12 ? 'Morning' : hour < 18 ? 'Afternoon' : 'Evening'}',
                    style: GoogleFonts.poppins(
                      fontSize: screenSize.width * 0.08, // Responsive font size
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://img1.wsimg.com/isteam/ip/0d5f3429-5c7a-42e7-b997-1ff1fa1e3048/Studio-Project%20(3)%20(5).png/:/rs=w:175,h:175,cg:true,m/cr=w:175,h:175/qt=q:95'),
                      backgroundColor: Colors.white, // White border
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),

              // Search for Mentors Card
              GestureDetector(
                onTap: () {
                  print("Hello");
                },
                child: Container(
                  height: screenSize.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Search for Mentors",
                          style: GoogleFonts.poppins(
                            fontSize:
                                screenSize.width * 0.05, // Responsive font size
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const Icon(
                          Icons.assistant_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Slideshow
              Center(
                child: Container(
                  height: screenSize.height * 0.25,
                  width: screenSize.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800], // Use a gray background color
                  ),
                  child: ImageSlideshow(
                    width: screenSize.width * 0.9,
                    height: screenSize.height * 0.25,
                    initialPage: 0,
                    indicatorColor: Colors.white,
                    indicatorBackgroundColor: Colors.grey[600],
                    children: [
                      _buildSlideshowItem(
                        "Understanding Algebra",
                        "Algebra is a branch of mathematics that uses symbols to represent numbers and quantities in formulas and equations.",
                        screenSize,
                      ),
                      _buildSlideshowItem(
                        "Effective Study Techniques",
                        "Developing effective study habits can greatly improve academic performance and reduce stress.",
                        screenSize,
                      ),
                      _buildSlideshowItem(
                        "The Importance of Critical Thinking",
                        "Critical thinking involves analyzing and evaluating information to make informed decisions and solve problems.",
                        screenSize,
                      ),
                      _buildSlideshowItem(
                        "History of Mathematics",
                        "Explore the development of mathematical concepts from ancient civilizations to modern times.",
                        screenSize,
                      ),
                      _buildSlideshowItem(
                        "Tips for Academic Success",
                        "Success in academics often involves setting clear goals, staying organized, and seeking help when needed.",
                        screenSize,
                      ),
                    ],
                    isLoop: true,
                    autoPlayInterval: 5000,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Popular Mentors Title
              Text(
                "Popular Mentors",
                style: GoogleFonts.poppins(
                  fontSize: screenSize.width * 0.06, // Responsive font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // ListView.builder for Popular Mentors
              ListView.builder(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // Prevents scrolling inside ListView
                itemCount: mentors.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: _buildMentorCard(screenSize, mentors[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSlideshowItem(
      String title, String description, Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: screenSize.width * 0.05, // Responsive font size
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: screenSize.width * 0.03, // Responsive font size
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMentorCard(Size screenSize, Map<String, String> mentor) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.grey[800], // Gray color for the card background
      child: Container(
        width: screenSize.width * 0.9, // Responsive width
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://img1.wsimg.com/isteam/ip/0d5f3429-5c7a-42e7-b997-1ff1fa1e3048/Studio-Project%20(3)%20(5).png/:/rs=w:175,h:175,cg:true,m/cr=w:175,h:175/qt=q:95'),
                  backgroundColor: Colors.white, // White border
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mentor['mentorName']!,
                        style: TextStyle(
                          fontSize:
                              screenSize.width * 0.045, // Responsive font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        mentor['experience']!,
                        style: TextStyle(
                          fontSize:
                              screenSize.width * 0.035, // Responsive font size
                          color: Colors.grey[400],
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        mentor['position']!,
                        style: TextStyle(
                          fontSize:
                              screenSize.width * 0.035, // Responsive font size
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            _buildRichText(
                "Qualification: ", mentor['qualification']!, screenSize),
            const SizedBox(height: 8.0),
            _buildRichText("Sector expertise: ", mentor['sector']!, screenSize),
            const SizedBox(height: 8.0),
            _buildRichText("How they can help: ", mentor['help']!, screenSize),
            const SizedBox(height: 8.0),
            _buildRichText(
              "Summary: ",
              mentor['summary']!,
              screenSize,
            ),
            const SizedBox(height: 8.0),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AppointmentScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Book Now",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRichText(String title, String content, Size screenSize) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(
              fontSize: screenSize.width * 0.04, // Responsive font size
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: content,
            style: TextStyle(
              fontSize: screenSize.width * 0.04, // Responsive font size
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
