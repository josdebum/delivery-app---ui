import 'package:delivery_app/constant/colors.dart';
import 'package:delivery_app/slider.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage() ,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(


      backgroundColor: AppColors.yellowColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(6),
        child: Stack (
            children: <Widget>
        [
        Positioned.fill(  //
        child: Image(
            image: AssetImage('assets/images/home_background.png'),
        fit : BoxFit.fill,
      ),
        ),

        Column(
          children: <Widget>[
            SizedBox(height: 120),

            Image.asset("assets/images/package.png", height: 230, width: 286),

            SizedBox(height: 60),
            Text("Welcome to E-Bikes", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: Color(0xFF041C2E)),),


            Container (
              margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
              child:Align (
                alignment: Alignment.center,
              child: Text("Buying Electric bikes just got a lot easier,     Try us today.",

                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF96823D)),),

            ),),
            SizedBox(height: 10,),

            Image.asset ("assets/images/loading.png"),
            SizedBox(height: 30,),


            GestureDetector(
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeCtScreen()));
              },
              child:

            Container (
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 56,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(shape: BoxShape.rectangle,  borderRadius: BorderRadius.circular(30), color: AppColors.dark),
                child: Row (
                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment.center,


                    children: <Widget>[

             CircleAvatar(
                 radius: 20,
                 backgroundColor: AppColors.light,
                 child: Image.asset("assets/images/icon-google.png")),
                      Spacer(flex: 1),
              Center(


                child:
              Text("Login with Google", textAlign: TextAlign.center, style:
              TextStyle(color: AppColors.light, fontSize: 14 , fontWeight: FontWeight.w500),),),
                      SizedBox(width: 14),
                      Spacer(flex: 1),

            ])),),
            SizedBox(height: 10,),

            Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Text("Don’t have any account?",  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF96823D)),),
SizedBox(width: 7,),
              Text("Sign Up",  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFF031522)),)
            ])



          ]
        )])
      )
    ));
  }
}