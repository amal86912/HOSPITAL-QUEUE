import 'package:flutter/material.dart';

class queuescreen extends StatefulWidget {
  const queuescreen({super.key});

  @override
  State<queuescreen> createState() => _queuescreenState();
}

class _queuescreenState extends State<queuescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient Queue"),
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
              "Patients Waiting",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: CircleAvatar(child: Text("1")),
                title: Text("Ahmed Ali"),
                subtitle: Text("Waiting: 10 Minutes"),
              ),
            ),

            SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: CircleAvatar(child: Text("2")),
                title: Text("Fatuma Hassan"),
                subtitle: Text("Waiting: 18 Minutes"),
              ),
            ),

            SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: CircleAvatar(child: Text("3")),
                title: Text("John Mwangi"),
                subtitle: Text("Waiting: 25 Minutes"),
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

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.orange,
                  minWidth: 200,
                  height: 50,
                  onPressed: () {},
                  child: Text(
                    "Refresh Queue",
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
