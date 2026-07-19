// ignore: file_names
import  'package:flutter/material.dart';

class Appointmentsscreens extends StatefulWidget {
  const Appointmentsscreens({Key? key}) : super(key: key);

  @override
  State<Appointmentsscreens> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointmentsscreens> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
                title: Text("Appointments"),
                backgroundColor: Colors.cyan,
                centerTitle: true,
               
        ),
        body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text("Appointments", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 20),
                        Card(
                          child: ListTile(
                            title: Text("Today's Appointment", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            subtitle: Text("Details of appointment"),
                          ),
                        ),
                        SizedBox(height: 20),
                        Card(
                            child: ListTile(
                            title: Text("Amal maalim", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            subtitle: Text("9.00 A.M"),
                            ),


                        ),
                        SizedBox(height: 20),
                        Card(
                            child: ListTile(
                            title: Text("Feisal Maalim", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            subtitle: Text("10:30-11:30 A.M"),
                            )
                        ),
                        SizedBox(height: 20),
                        Card(
                            child: ListTile(
                            title: Text("Zumar Maalim", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            subtitle: Text("11:30-12:30 A.M"),
                            )
                        ),
                        SizedBox(height: 30),
                        Row(
                            mainAxisAlignment: 
                            MainAxisAlignment.center,
                            children: [
                                MaterialButton(
                                    color: Colors.cyan,
                                    minWidth: 200,
                                    height: 50,
                                    onPressed: () {},
                                    child: Text(
                                        "Add Appointment",
                                    style:TextStyle(color: Colors.white),
                                    ),
                                ),
                    
                    ],
                  )
                    ],
                  ),
                ),

    );
  }
}


                    



                            


                        




                      
                      
                      