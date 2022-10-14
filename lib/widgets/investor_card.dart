import 'package:flutter/material.dart';

class InvestorCard extends StatelessWidget {
  const InvestorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("images/img4.png"),fit: BoxFit.cover, )),
        //color: Colors.red.withOpacity(0),
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width/1.25 ,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Startup Seminars 2022 - Setting up your business ",
                  style:
                  TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15,),
              Text("Tue, Nov, 22, 6:30 pm"),
              SizedBox(height: 5,),
              Text("Room ELG03, Drysdale Building • London"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: ElevatedButton(
                  onPressed: () {
                    //
                    // if (await func.signin(email, password)) {
                    //   //await func.profileinfo(email);
                    //   //String name = await func.userpower();
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>(isfac) ? FacultyHome() : HomePage()));
                    //
                    // } else {
                    //   const snackbar = SnackBar(
                    //     backgroundColor: Colors.blueGrey,
                    //     behavior: SnackBarBehavior.floating,
                    //     content: Text(
                    //       "Incorrect User Credentials",
                    //       style: TextStyle(color: Colors.white),
                    //     ),
                    //   );
                    //   ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF304675),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // minimumSize: Size(315, 42),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text("Register"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
