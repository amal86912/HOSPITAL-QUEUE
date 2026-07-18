import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dashboardscreen extends StatefulWidget {
  const dashboardscreen({super.key});

  @override
  State<dashboardscreen> createState() => _dashboardscreenState();
}

class _dashboardscreenState extends State<dashboardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: Icon(Icons.people, color: Colors.cyan),
                title: Text("Patients"),
                subtitle: Text("250 Registered"),
              ),
            ),

            SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.green),
                title: Text("Appointments"),
                subtitle: Text("35 Today"),
              ),
            ),

            SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: Icon(Icons.access_time, color: Colors.orange),
                title: Text("Current Queue"),
                subtitle: Text("12 Patients Waiting"),
              ),
            ),

            SizedBox(height: 40),

            MaterialButton(
              color: Colors.cyan,
              minWidth: 200,
              height: 50,
              onPressed: () {
                Get.toNamed("/queue");
              },
              child: Text("View Queue", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
