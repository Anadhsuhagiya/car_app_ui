import 'package:car_app_ui/Registration.dart';
import 'package:car_app_ui/forgot_pass.dart';
import 'package:car_app_ui/home.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  TextEditingController Username = TextEditingController();
  TextEditingController Password = TextEditingController();

  bool emailerror = false;
  bool passerror = false;
  bool hidepass = true;

  String emailmsg = "";
  String passmsg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomPaint(
              size: Size(double.infinity, 600),
              //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            Container(
              margin: EdgeInsets.only(top: 260),
              child: CustomPaint(
                size: Size(double.infinity, 650),
                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter1(),
              ),
            ),
            Positioned(
              child: Column(
                children: [
                  SizedBox(
                    height: 210,
                  ),
                  Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0xff250148),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      onChanged: (value) {
                        print(value);
                        if (emailerror) {
                          if (value.isNotEmpty) {
                            setState(() {
                              emailerror = false;
                            });
                          }
                        }
                      },
                      controller: Username,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff040065), width: 3)),
                          border: OutlineInputBorder(),
                          hintText: "Enter Username",
                          labelText: "Username",
                          labelStyle: TextStyle(color: Color(0xff040065)),
                          errorText: emailerror ? emailmsg : null,
                          prefixIcon: Icon(
                            Icons.email_rounded,
                            color: Color(0xff040065),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 10, top: 3),
                    child: TextField(
                      onChanged: (value) {
                        print(value);
                        if (passerror) {
                          if (value.isNotEmpty) {
                            setState(() {
                              passerror = false;
                            });
                          }
                        }
                      },
                      controller: Password,
                      obscureText: hidepass,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff040065), width: 3)),
                          border: OutlineInputBorder(),
                          hintText: "Enter Your Password",
                          labelText: "Password",
                          labelStyle: TextStyle(color: Color(0xff040065)),
                          suffixIcon: IconButton(
                              onPressed: () {
                                hidepass = !hidepass;
                                setState(() {});
                              },
                              icon: hidepass
                                  ? Icon(
                                      Icons.visibility,
                                      color: Color(0xff040065),
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: Color(0xff676767),
                                    )),
                          errorText: passerror ? passmsg : null,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff040065),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Forgot_Password();
                              },
                            ));
                          },
                          child: Text(
                            "Fogot Password ?",
                            style: TextStyle(color: Color(0xff858585)),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () async {
                      String username = Username.text;
                      String password = Password.text;

                      if (username.isEmpty) {
                        emailerror = true;
                        emailmsg = "Enter Uesrname ";
                        setState(() {});
                      } else if (password.isEmpty) {
                        passerror = true;
                        passmsg = "Enter your password";
                        setState(() {});
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                          color: Color(0xff040065),
                          shadows: [
                            BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 1,
                                offset: Offset(0, 3),
                                color: Colors.black.withOpacity(0.4))
                          ],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You have no Account ? ",
                        style:
                            TextStyle(color: Color(0xff7e7e7e), fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return Registration();
                              },
                            ));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color(0xff250148), fontSize: 20),
                          )),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        ));
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * 0.64, 0),
        Offset(size.width, size.height * 0.30),
        [Color(0xff3f006a), Color(0xff1000c8)],
        [0.00, 1.00]);

    Path path0 = Path();
    path0.moveTo(size.width * 0.2823750, 0);
    path0.cubicTo(
        size.width * 0.3023500,
        size.height * 0.0437228,
        size.width * 0.3241750,
        size.height * 0.1089870,
        size.width * 0.5357750,
        size.height * 0.1111144);
    path0.cubicTo(
        size.width * 0.6057000,
        size.height * 0.1131823,
        size.width * 0.6439250,
        size.height * 0.1118731,
        size.width * 0.7152000,
        size.height * 0.1229712);
    path0.cubicTo(
        size.width * 0.7865250,
        size.height * 0.1349470,
        size.width * 0.8024250,
        size.height * 0.1455243,
        size.width * 0.8220500,
        size.height * 0.1918059);
    path0.cubicTo(
        size.width * 0.8308750,
        size.height * 0.2419107,
        size.width * 0.8332250,
        size.height * 0.2545709,
        size.width * 0.8741250,
        size.height * 0.2795489);
    path0.quadraticBezierTo(size.width * 0.9117750, size.height * 0.3012838,
        size.width, size.height * 0.3025037);
    path0.lineTo(size.width, 0);
    path0.quadraticBezierTo(
        size.width * 0.8205938, 0, size.width * 0.2823750, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(0, size.height * 0.87),
        Offset(size.width * 0.58, size.height * 0.87),
        [Color(0xff490e69), Color(0xff1c0e9d)],
        [0.00, 1.00]);

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.7240512);
    path0.quadraticBezierTo(size.width * 0.1232500, size.height * 0.6918430,
        size.width * 0.2829250, size.height * 0.6996682);
    path0.cubicTo(
        size.width * 0.4254750,
        size.height * 0.7078504,
        size.width * 0.4836250,
        size.height * 0.7592942,
        size.width * 0.5225000,
        size.height * 0.8003689);
    path0.cubicTo(
        size.width * 0.5787750,
        size.height * 0.8666745,
        size.width * 0.5573750,
        size.height * 0.9260774,
        size.width * 0.5191250,
        size.height * 0.9604426);
    path0.cubicTo(
        size.width * 0.4808500,
        size.height * 1.0136865,
        size.width * 0.4257375,
        size.height * 1.0183132,
        size.width * 0.4001500,
        size.height * 1.0413721);
    path0.quadraticBezierTo(size.width * 0.3001125, size.height * 1.0413721, 0,
        size.height * 1.0413721);
    path0.lineTo(0, size.height * 0.7240512);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
