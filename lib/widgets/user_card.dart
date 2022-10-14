import 'package:flutter/material.dart';
import 'package:hackout/constants.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.white,
          elevation: 8,
          child: Container(
            color: Colors.red.withOpacity(0),
            height: MediaQuery.of(context).size.height / 3.25,
            width: MediaQuery.of(context).size.width/1.1 ,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 30, // Image radius
                        backgroundImage: AssetImage('images/img2.jpg'),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Expanded(
                        child: ListTile(
                          title:  Text("Sarthal Manocha",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                          subtitle: Text("Schrodinger, california USA",style: TextStyle(fontSize: 18,),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum ultrices gravida tellus aliquet rhoncus volutpat feugiat. A placerat diam dui nisl egestas sit consequat, massa. Mauris in aliquet integer asdjsadhkjsahdkjsahdkjhsajkdhkjsahkdjhsajkhdjksahkjdhkajshdkjahskjdhjakshdjkhasjkdhjashdasjkhdjkhaskjdhjashdkajsdhkjas",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFf3f3f5),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("C++, Java, + 3",style: Ktags,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFf3f3f5),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Full Time",style: Ktags,),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xFFfdd6ae),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("View",style: Ktags,)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
