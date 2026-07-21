import 'package:flutter/material.dart';

class Queuescreen extends StatefulWidget {
  const Queuescreen({super.key});

  @override
  State<Queuescreen> createState() => _QueuescreenState();
}

class _QueuescreenState extends State<Queuescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("patient Queue"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "patients Waiting",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text("1")),
                  title: Text("Amal Maalim"),
                  subtitle: Text("Waiting :10 Minutes"),
                ),
              ),
              SizedBox(height: 10),

              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text("2")),
                  title: Text("Feisal Maalim"),
                  subtitle: Text("Waiting 18 Minutes"),
                ),
              ),

              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text("3")),
                  title: Text("Zumar Maalim"),
                  subtitle: Text("Waiting 25 Minutes"),
                ),
              ),
              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.green,
                    minWidth: 200,
                    height: 50,
                    onPressed: () {},
                    child: Text(
                      "Call Next Patient",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
