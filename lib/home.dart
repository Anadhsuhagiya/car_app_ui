import 'package:car_app_ui/Description.dart';
import 'package:flutter/material.dart';

import 'Model.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff250148),
                  Color(0xff47048f),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Hello, Anadh !",
                        style: TextStyle(
                            fontSize: 25,
                            shadows: [
                              Shadow(
                                  color: Colors.black,
                                  offset: Offset(2, 4),
                                  blurRadius: 29)
                            ],
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.notifications_active,
                        color: Color(0xff3b3a3a),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
                  height: 50,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    shadows: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 30,
                          offset: Offset(2, 5),
                          spreadRadius: -5,
                          blurStyle: BlurStyle.normal),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffa1a1a1),
                        Color(0xffececec),
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                      itemCount: Model.car_name.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return desc(index);
                            },));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                            height: 200,
                            width: double.infinity,
                            decoration: ShapeDecoration(
                                shadows: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 30,
                                      offset: Offset(2, 5),
                                      spreadRadius: -5,
                                      blurStyle: BlurStyle.normal),
                                ],
                                gradient: LinearGradient(
                                    colors: [Color(0xff9a9a9a), Color(0xffe7e6e6)]),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Image.asset(
                                    '${Model.car_images[index]}',
                                    height: 120,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${Model.car_name[index]}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff250148),
                                          letterSpacing: 1),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Automatic",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff6c6c6c),
                                          letterSpacing: 1),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "${Model.car_price[index]}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff471581),
                                          letterSpacing: 1),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
