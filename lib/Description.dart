import 'package:car_app_ui/Model.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class desc extends StatefulWidget {
  int index;

  desc(this.index);

  @override
  State<desc> createState() => _descState();
}

class _descState extends State<desc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Car Details",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff250148),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(),
                  image: DecorationImage(
                      image: AssetImage("images/shape.png"), fit: BoxFit.cover),
                  ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: Image.asset('${Model.car_images[widget.index]}'),
              height: 200,
              width: 300,
            ),
            Positioned(
              top: 260,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Text(
                    "${Model.car_name[widget.index]}",
                    style: TextStyle(fontSize: 30, color: Color(0xff250148)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Automatic",
                    style: TextStyle(fontSize: 17, color: Color(0xff707070)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${Model.car_price[widget.index]}",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff471581),
                        letterSpacing: 1),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: Text(
                      "${Model.car_description[widget.index]}",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff000000),
                          letterSpacing: 1),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(2, 4),
                          spreadRadius: -3,
                          blurStyle: BlurStyle.normal
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff471581),
                    ),
                    child: Text("Add Cart",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
