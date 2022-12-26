import 'package:flutter/material.dart';

class Registration extends StatefulWidget {

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  
  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();
  TextEditingController Password = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration",style: TextStyle(color: Colors.white,fontSize: 18),),
        backgroundColor: Color(0xff250148),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.network('https://img.freepik.com/premium-vector/online-registration-illustration-design-concept-websites-landing-pages-other_108061-938.jpg?w=2000',height: 150,)
            ),
            SizedBox(
              height: 10,
            ),

            TextField(
              controller: Name,

            ),
          ],
        ),
      ),
    );
  }
}
