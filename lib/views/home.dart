import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/dashboard.dart';

final List<Widget> screens = [
  const Dashboard(),
  const Queuescreens(),
  const Appointmentsscreens(),
  const Profilescreens(),
];

class Appointmentsscreens extends StatelessWidget {
  const Appointmentsscreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointments'),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Today\'s Appointments',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildAppointmentCard('09:00', 'Dr. Sara', 'General Medicine'),
            _buildAppointmentCard('11:30', 'Dr. Ali', 'Cardiology'),
            _buildAppointmentCard('02:00', 'Dr. Lina', 'Pediatrics'),
          ],
        ),
      ),
    );
  }

  Widget _buildAppointmentCard(String time, String doctor, String department) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: const Icon(Icons.calendar_today, color: Colors.cyan),
        title: Text(doctor),
        subtitle: Text('$department · $time'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}

class Profilescreens extends StatelessWidget {
  const Profilescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.cyan,
              child: Icon(Icons.person, size: 45, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Amal Hassan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Patient ID: P-1024',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: const Icon(Icons.email, color: Colors.cyan),
                title: const Text('Email'),
                subtitle: const Text('amal@example.com'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.phone, color: Colors.cyan),
                title: const Text('Phone'),
                subtitle: const Text('+966 50 123 4567'),
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {},
              color: Colors.cyan,
              minWidth: 220,
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Edit Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Queuescreens extends StatelessWidget {
  const Queuescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Queue'),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Current Queue',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildQueueItem('A021', 'Sara', 'General Medicine', 'Now'),
            _buildQueueItem('A022', 'Khalid', 'Cardiology', 'Next'),
            _buildQueueItem('A023', 'Mona', 'Pediatrics', 'Later'),
          ],
        ),
      ),
    );
  }

  Widget _buildQueueItem(
    String number,
    String name,
    String department,
    String status,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: const Icon(Icons.people, color: Colors.deepOrangeAccent),
        title: Text('$number · $name'),
        subtitle: Text(department),
        trailing: Text(status),
      ),
    );
  }
}

int position = 0;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        color: Colors.cyan,
        buttonBackgroundColor: Colors.deepOrangeAccent,
        height: 60,
        items: const <Widget>[
          Icon(Icons.dashboard, size: 30, color: Colors.white),
          Icon(Icons.people, size: 30, color: Colors.white),
          Icon(Icons.calendar_today, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            position = index;
          });
        },
      ),
      body: screens[position],
    );
  }
}
