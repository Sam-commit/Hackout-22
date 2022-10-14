import 'package:flutter/material.dart';

class HomeScreenCompany extends StatefulWidget {
  const HomeScreenCompany({Key? key}) : super(key: key);

  @override
  _HomeScreenCompanyState createState() => _HomeScreenCompanyState();
}

class _HomeScreenCompanyState extends State<HomeScreenCompany> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

        ],
      )
    )
    );
  }
}
