import 'package:flutter/material.dart';
import 'package :get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  State<appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
                title: Text("Appointments"),
                backgroundColor: Colors.cyan,
                centerTitle: true,
                backgroundColor: Colors.cyan,
                (
                    body: Center(
                      child: Text("Appointments"),
                    )
                )

        )
         );

         
        