import 'package:car_app_ui/Login_page.dart';
import 'package:car_app_ui/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:ui' as ui;

class Registration extends StatefulWidget {
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();
  TextEditingController Password = TextEditingController();

  bool nameerror = false;
  bool namevalid = false;
  bool emailerror = false;
  bool passerror = false;
  bool contacterror = false;
  bool hidepass = true;
  bool photoerror = false;

  int textLength = 0;
  int maxLength = 10;

  String contactmsg = "";
  String emailmsg = "";
  String passmsg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Welcome to the Car World",style: TextStyle(color: Colors.white,fontSize: 18),),
      //   backgroundColor: Color(0xff250148),
      // ),

      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomPaint(
              size: Size(double.infinity, 600),
              //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            Container(margin: EdgeInsets.only(top: 260),
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
                    height: 170,
                  ),
                  Center(
                      child: Text(
                    "Sign Up",
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
                        if (nameerror) {
                          if (value.isNotEmpty) {
                            nameerror = false;
                            setState(() {});
                          }
                        }
                      },
                      controller: Name,
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      style: TextStyle(color: Color(0xff040065)),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff040065), width: 3)),
                          border: OutlineInputBorder(),
                          hintText: "Enter Name",
                          labelText: "Name",
                          labelStyle: TextStyle(color: Color(0xff040065)),
                          errorText:
                              nameerror ? "Please Enter Valid Name" : null,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff040065),
                          )),
                    ),
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
                      controller: Email,
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(color: Color(0xff250148)),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff250148), width: 3)),
                          border: OutlineInputBorder(),
                          hintText: "Enter Email Address",
                          labelText: "Email",
                          labelStyle: TextStyle(color: Color(0xff250148)),
                          errorText: emailerror ? emailmsg : null,
                          prefixIcon: Icon(
                            Icons.email_rounded,
                            color: Color(0xff250148),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      onChanged: (value) {
                        textLength = value.length;
                        if (contacterror) {
                          if (value.isNotEmpty) {
                            setState(() {
                              contacterror = false;
                            });
                          }
                        }
                      },
                      controller: PhoneNumber,
                      keyboardType: TextInputType.phone,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(color: Color(0xff250148)),
                      maxLength: 10,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff250148))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff250148), width: 3)),
                          counter: Offstage(),
                          suffixText:
                              '${textLength.toString()}/${maxLength.toString()}',
                          hintText: "Enter Your Contact",
                          labelText: "Contact",
                          labelStyle: TextStyle(color: Color(0xff250148)),
                          errorText: contacterror ? contactmsg : null,
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Color(0xff250148),
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
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(color: Color(0xff250148)),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff040065), width: 3)),
                          border: OutlineInputBorder(),
                          hintText: "Enter Your Password",
                          labelText: "Password",
                          labelStyle: TextStyle(color: Color(0xff250148)),
                          suffixIcon: IconButton(
                              onPressed: () {
                                hidepass = !hidepass;
                                setState(() {});
                              },
                              icon: hidepass
                                  ? Icon(
                                      Icons.visibility,
                                      color: Color(0xff250148),
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: Color(0xff250148),
                                    )),
                          errorText: passerror ? passmsg : null,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff250148),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () async {
                      String name = Name.text;
                      String Phone = PhoneNumber.text;
                      String email = Email.text;
                      String pass = Password.text;
                      // Map m = {'name': Name, 'phone': Phone, 'email': Email, 'pass': pass};

                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(email);
                      bool passValid =
                          RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                              .hasMatch(pass);

                      String link =
                          "https://flutteranadh.000webhostapp.com/register.php";

                      if (photoerror == false) {
                        Fluttertoast.showToast(
                            msg: "Please Insert Profile Image",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 15.0);
                      } else if (name.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please Insert Name",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 15.0);
                        setState(() {
                          nameerror = true;
                        });
                      } else if (email.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please Insert Email",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 15.0);
                        setState(() {
                          emailerror = true;
                          emailmsg = "Enter Email Address";
                        });
                      } else if (!emailValid) {
                        setState(() {
                          emailerror = true;
                          emailmsg = "Please Enter Valid Email Address";
                        });
                      } else if (Phone.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please Insert Mobile Number",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 15.0);
                        setState(() {
                          contacterror = true;
                          contactmsg = "Enter your Contact";
                        });
                      } else if (Phone.length < 10) {
                        setState(() {
                          contacterror = true;
                          contactmsg = "Please Enter 10 digit Contact";
                        });
                      } else if (pass.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please Create your own Password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 15.0);
                        setState(() {
                          passerror = true;
                          passmsg = "Enter your password";
                        });
                      } else if (!passValid) {
                        setState(() {
                          passerror = true;
                          passmsg = "Please Enter Valid Formatted password";
                        });
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                          color: Color(0xff250148),
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
                        "SignUp",
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
                        "Already Registered ? ",
                        style: TextStyle(color: Color(0xff7e7e7e),fontSize: 16),
                      ),
                      TextButton(onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return Login_page();
                        },));
                      }, child: Text(
                        "Login",style: TextStyle(color: Color(0xff250148),fontSize: 20),
                      ))
                    ],
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

class RPSCustomPainter1 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(Offset(0,size.height*0.87),Offset(size.width*0.58,size.height*0.87),[Color(0xff490e69),Color(0xff1c0e9d)],[0.00,1.00]);

    Path path0 = Path();
    path0.moveTo(0,size.height*0.7240512);
    path0.quadraticBezierTo(size.width*0.1232500,size.height*0.6918430,size.width*0.2829250,size.height*0.6996682);
    path0.cubicTo(size.width*0.4254750,size.height*0.7078504,size.width*0.4836250,size.height*0.7592942,size.width*0.5225000,size.height*0.8003689);
    path0.cubicTo(size.width*0.5787750,size.height*0.8666745,size.width*0.5573750,size.height*0.9260774,size.width*0.5191250,size.height*0.9604426);
    path0.cubicTo(size.width*0.4808500,size.height*1.0136865,size.width*0.4257375,size.height*1.0183132,size.width*0.4001500,size.height*1.0413721);
    path0.quadraticBezierTo(size.width*0.3001125,size.height*1.0413721,0,size.height*1.0413721);
    path0.lineTo(0,size.height*0.7240512);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}




