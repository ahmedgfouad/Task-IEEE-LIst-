import 'package:flutter/material.dart';
import 'package:task_list_and_gred_ieee/Task.dart';
import 'Task.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task(),
    );
  }
}
