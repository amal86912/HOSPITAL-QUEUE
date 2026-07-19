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
        title: const Text("Dashboard"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(Icons.people, color: Colors.cyan),
                title: const Text("Patients"),
                subtitle: const Text("250 Registered"),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              child: ListTile(
                leading: const Icon(Icons.calendar_today, color: Colors.green),
                title: const Text("Appointments"),
                subtitle: const Text("35 Today"),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              child: ListTile(
                leading: const Icon(Icons.access_time, color: Colors.orange),
                title: const Text("Current Queue"),
                subtitle: const Text("12 Patients Waiting"),
              ),
            ),
            const SizedBox(height: 40),
            MaterialButton(
              color: Colors.cyan,
              minWidth: 200,
              height: 50,
              onPressed: () {
                Get.toNamed("/queue");
              },
              child: const Text(
                "View Queue",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
