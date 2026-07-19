import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Appointments.dart'
    as appointments_view;
import 'package:flutter_application_1/views/dashboard.dart';

final List<Widget> screens = [
  const dashboardscreen(),
  const Queuescreens(),
  const appointments_view.Appointmentsscreens(),
  const Profilescreens(),
];

class Profilescreens extends StatelessWidget {
  const Profilescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Profile');
  }
}

class Queuescreens extends StatelessWidget {
  const Queuescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Queue');
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
        index: position,
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.calendar_today, size: 30),
          Icon(Icons.dashboard, size: 30),
        ],
        onTap: (index) {
          setState(() {
            position = index;
          });
        },
      ),
      body: IndexedStack(index: position, children: screens),
    );
  }
}
