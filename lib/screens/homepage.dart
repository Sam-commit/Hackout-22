import 'package:flutter/material.dart';
import 'company_screens/homescreen_company.dart';
import 'company_screens/add_jobs.dart';
import 'company_screens/students_applied.dart';
import 'company_screens/search.dart';
import 'company_screens/profile_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [
    HomeScreenCompany(),
    StudentsApplied(),
    AddJobs(),
    Search(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFa8a8bd),
        selectedItemColor: Color(0xFF304675),
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.houseChimney), label: "Home"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.newspaper), label: "My Interns"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userTie), label: "Proffesors"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.comment), label: "chat"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user), label: "Profile"),
        ],
      ),
    );
  }
}
