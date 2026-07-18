import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

late List<Widget> screens;

void initializeScreens() {
  screens = [
    const Dashboard(),
    const Queue(),
    const Appointments(),
    const Profile(),
  ];
}

class Appointments extends StatelessWidget {
  const Appointments();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Profile extends StatelessWidget {
  const Profile();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Queue extends StatelessWidget {
  const Queue();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

int position = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.calendar_today, size: 30),
          Icon(Icons.dashboard, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            position = index;
          });
        },
      ),
      body: screens[position],
    );
  }
}
