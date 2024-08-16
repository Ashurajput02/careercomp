import 'package:flutter/material.dart';
import 'package:thecareercompany/user/screen/bookingdone.dart';

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  DateTime _selectedDate = DateTime.now();
  String _selectedTime = '11:00 AM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Date And Time'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CalendarDatePicker(
              initialDate: _selectedDate,
              firstDate: DateTime(2023, 1),
              lastDate: DateTime(2024, 12),
              onDateChanged: (date) {
                setState(() {
                  _selectedDate = date;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Available Time Slot',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTimeSlot('10:00 AM'),
                SizedBox(width: 8.0),
                _buildTimeSlot('11:00 AM', isSelected: true),
                SizedBox(width: 8.0),
                _buildTimeSlot('12:00 PM'),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CongratulationsScreen();
                }));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: Text('Set Appointment',
                  style: TextStyle(color: Colors.white, fontSize: 16.0)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeSlot(String time, {bool isSelected = false}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTime = time;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal : Colors.black,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.teal,
            width: 1.0,
          ),
        ),
        child: Text(
          time,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
