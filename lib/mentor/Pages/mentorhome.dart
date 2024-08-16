import 'package:flutter/material.dart';
import 'package:thecareercompany/mentor/Pages/card.dart';

class Mentorhome extends StatefulWidget {
  const Mentorhome({super.key});

  @override
  State<Mentorhome> createState() => _MentorhomeState();
}

class _MentorhomeState extends State<Mentorhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Container(
              margin: EdgeInsets.all(5),
              child: Icon(
                Icons.person,
                color: Colors.white,
              )),
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              UserProfileCard(
                  userName: "Rahul Raj",
                  userDetails: "software devloper",
                  timeSlot: "4:00 pm - 5:"),
              SizedBox(
                height: 5,
              ),
              UserProfileCard(
                  userName: "Adarsh Roy",
                  userDetails: "Data anylist",
                  timeSlot: "5:00 pm - 6:00"),
              UserProfileCard(
                  userName: "Vivek",
                  userDetails: "software devloper",
                  timeSlot: "6:00 pm - 7:00pm"),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
