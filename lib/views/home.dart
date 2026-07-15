import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Appointments.dart';
import 'package:flutter_application_1/views/Profile.dart';
import 'package:flutter_application_1/views/Queue.dart';

var screens = [Queue(), const Appointments(), const Profile()];
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
