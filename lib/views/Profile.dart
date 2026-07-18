import 'package:flutter/material.dart';

class profilescreen extends StatefulWidget {
  const profilescreen({super.key});

  @override
  State<profilescreen> createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            CircleAvatar(radius: 60, child: Icon(Icons.person, size: 70)),

            SizedBox(height: 20),

            Text(
              "Maalim Amal",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Text("amal@gmail.com"),

            SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                subtitle: Text("+254 700000000"),
              ),
            ),

            SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Location"),
                subtitle: Text("Nairobi"),
              ),
            ),

            SizedBox(height: 30),

            MaterialButton(
              color: Colors.red,
              minWidth: 200,
              height: 50,
              onPressed: () {},
              child: Text("Logout", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
