import 'package:flutter/material.dart';
import 'package:hackout/screens/company_screens/add_jobs.dart';
import 'package:hackout/screens/company_screens/profile_page.dart';
import 'package:hackout/screens/homepage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}



