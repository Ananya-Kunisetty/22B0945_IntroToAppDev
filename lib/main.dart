import 'package:flutter/material.dart';
import 'package:budget_tracker/home.dart';
import 'package:budget_tracker/total_list.dart';



void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context)=> Home(),
      '/total_list': (context) => TotalList(),
    }
));


