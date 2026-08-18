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
    //final void Function( String ) funcToUpdateAttendanceValue ; 
  
  //ThisWidgetHasData( { required this.funcToUpdateAttendanceValue } );
  
  //List<bool>
  State<ThisWidgetHasData> createState() => _ThisWidgetHasDataState();
  
}

class _ThisWidgetHasDataState extends State<ThisWidgetHasData>{
  
  //List<bool> attendanceToday = [false, false, false, false];  
  Map<String, bool> attendanceToday = { "01" : false, "02" : false, "03" : false, "04" : false}; 
  
  void funcToToggleAttendanceValue( String requiredKey ){
    setState( (){ attendanceToday[ requiredKey ] = !(attendanceToday[ requiredKey ]!) ; } );
  };
  
  Widget build(BuildContext context){
    return Column(children :[Text( "this page displays the attendance information" ), ThisWidgetHasCheckBoxes( receivedAttendance : attendanceToday, copyOfReceivedAttendance : attendanceToday, funcToToggleAttendanceValue : funcToToggleAttendanceValue ) ]);
  }
}

class ThisWidgetHasCheckBoxes extends StatelessWidget{
  
  //final List<bool> receivedAttendance;
  //final List<bool> copyOfReceivedAttendance;
  final Map<String, bool> receivedAttendance;
  final Map<String, bool> copyOfReceivedAttendance;
  final void Function( String ) funcToToggleAttendanceValue ; 
  
  ThisWidgetHasCheckBoxes( { required this.receivedAttendance, required this.copyOfReceivedAttendance, required this.funcToToggleAttendanceValue } );
  
  Widget build(BuildContext context){
    
    List<String> listOfKeys = (receivedAttendance.keys).toList() ;
    
    return ListView.builder( itemBuilder : ( context, index ) => AttendanceCard( rollNo : listOfKeys[index], attendanceValue : receivedAttendance[ listOfKeys[index] ], funcToUpdateAttendanceValue : funcToToggleAttendanceValue ) );
  }
  
}

/*
class AttendanceCard extends StatelessWidget{
  
}
*/
