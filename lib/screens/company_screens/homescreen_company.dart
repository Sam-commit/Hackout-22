import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackout/constants.dart';
import 'package:hackout/widgets/investor_card.dart';
import 'package:hackout/widgets/user_card.dart';

class HomeScreenCompany extends StatefulWidget {
  const HomeScreenCompany({Key? key}) : super(key: key);

  @override
  _HomeScreenCompanyState createState() => _HomeScreenCompanyState();
}

class _HomeScreenCompanyState extends State<HomeScreenCompany> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width/2;

    return SingleChildScrollView(
      child: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: (width-30)),
                    child: Text("JobsQ",style: TextStyle(color: Color(0xFF150b3d),fontSize: 24,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: FaIcon(FontAwesomeIcons.message),
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Upcomming Events !",style: Kheadings.copyWith(fontSize: 20),),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InvestorCard(),
                        InvestorCard()
                      ],
                    )),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Employees Available",style: Kheadings.copyWith(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFafecfe),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage("images/img5.png"),height: 70,width: 70,),
                                  Text("44.5K",style: TextStyle(fontSize: 28,color: Color(0xFF150b3d),fontWeight: FontWeight.bold),),
                                  Text("Full time",style: TextStyle(fontSize: 20,color: Color(0xFF150b3d),fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFbeaffe),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text("66.8K",style: Kdata,),Text("Part Time",style: Ksubdata,)],
                                  ),
                                ),),
                              ),
                              SizedBox(height: 10,),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFffd6ad),
                                      borderRadius: BorderRadius.circular(10)
                                  ),child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text("38.9K",style: Kdata,),Text("Internships",style: Ksubdata,)],
                                  ),
                                ),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Recommendations",style: Kheadings.copyWith(fontSize: 20),),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 2.85,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        UserCard(),
                        UserCard()
                      ],
                    )),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
