// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class appointmentscreen extends StatefulWidget {
  const appointmentscreen({super.key});

  @override
  State<appointmentscreen> createState() => _appointmentscreenState();
}

// ignore: camel_case_types
class _appointmentscreenState extends State<appointmentscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appointments"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Today's Appointments",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.green),
                title: Text("Ahmed Ali"),
                subtitle: Text("9:00 AM"),
                trailing: Text("Scheduled"),
              ),
            ),

            SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.green),
                title: Text("Fatuma Hassan"),
                subtitle: Text("10:30 AM"),
                trailing: Text("Scheduled"),
              ),
            ),

            SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.green),
                title: Text("Feisal Maalim"),
                subtitle: Text("11:30 AM"),
                trailing: Text("Scheduled"),
              ),
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.cyan,
                  minWidth: 200,
                  height: 50,
                  onPressed: () {},
                  child: Text(
                    "Add Appointment",
                    style: TextStyle(color: Colors.white),
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
