import 'package:agi_app/Constants/colors.dart';
import 'package:flutter/material.dart';

class StudentResult extends StatelessWidget {
  const StudentResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: black1),
          elevation: 0,
          title: Text("Atharva group of Institutes", style: TextStyle(color: black1, letterSpacing: 0.5, fontWeight: FontWeight.w500, fontFamily: 'Poppins',fontSize: 18 ),),
          centerTitle: true,
          backgroundColor: whiteBg1,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          color: whiteBg1,
          child: Center(child: Text("Student Result", style: TextStyle(color: black1, fontWeight: FontWeight.w400, fontFamily: "Poppins", fontSize: 50),)),
        )
    );

  }
}
