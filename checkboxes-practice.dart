import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: ThisWidgetHasData())),
    );
  }
}

class ThisWidgetHasData extends StatefulWidget{
  
  //List<bool>
  State<ThisWidgetHasData> createState() => _ThisWidgetHasDataState();
  
}

class _ThisWidgetHasDataState extends State<ThisWidgetHasData>{
  
  List<bool> attendanceToday = [false, false, false, false];  
  
  Widget build(BuildContext context){
    return Column(children :[Text( "this page displays the attendance information" ), ThisWidgetHasCheckBoxes( receivedAttendance : attendanceToday, copyOfReceivedAttendance : attendanceToday ) ]);
  }
}

class ThisWidgetHasCheckBoxes extends StatelessWidget{
  
  final List<bool> receivedAttendance;
  final List<bool> copyOfReceivedAttendance;
  
  ThisWidgetHasCheckBoxes( { required this.receivedAttendance, required this.copyOfReceivedAttendance } );
  
  Widget build(BuildContext context){
    return Text( "this page contains the checkboxes to change attendance information" );
  }
  
}
