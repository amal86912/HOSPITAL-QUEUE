import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,

        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CircleAvatar(radius: 60, child: Icon(Icons.person, size: 70)),
              SizedBox(height: 20),
              Text(
                "Maalim Amal",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("phone"),
                  subtitle: Text("+254 720567897"),
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
      ),
    );
  }
}
