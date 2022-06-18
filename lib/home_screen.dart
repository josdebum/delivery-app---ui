import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_app/slider.dart';
import 'package:delivery_app/track_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'constant/colors.dart';
import 'new.dart';




class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  final controller = PageController(viewportFraction: 0.8,);
  int currentPos = 0;

  List<String> listPaths = [
    "assets/images/bike.png",
    "assets/images/bike.png",
    "assets/images/bike.png",
    "assets/images/bike.png",
    "assets/images/bike.png",
    "assets/images/bike.png",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppColors.light,
      body: SingleChildScrollView(

        child: Expanded(child:Column(

          children: <Widget>[
            SizedBox(height: 50),
            Container (
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child:
            Row (

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
              CircleAvatar(

                  child: Image.asset("assets/images/person.png")),

              Container (
                height: 40,
                  width: 40,
                  decoration: BoxDecoration(shape: BoxShape.rectangle,  borderRadius: BorderRadius.circular(12), color: Color(0xFFF1F6FB)),
                  child: Image.asset("assets/images/icon-setting.png"))
            ])),

          Container (
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              child:
            Align(
                alignment: Alignment.topLeft,
                child:

            Text("Hello good Morning!", style:
            TextStyle( fontSize: 18 , fontWeight: FontWeight.w700, color: Color(0xFF092C4C)),))),
Container (
  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
  height: 240,
  //width: 300,

  child:
        PageView.builder(
          padEnds: false,
          controller: controller,
          itemCount: listPaths.length,
          itemBuilder: (context, index) =>
              Container(
                  height: 300,
                  width: 320,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color:
                  AppColors.slidergrey,
                      shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(24) ),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset(listPaths[index], color: currentPos  == index? null

                    :Color(0xFF1E3354).withOpacity(0.3) ),
                  )
              ),
          onPageChanged: (index){
            setState(() {
              currentPos = index;
            });
          },
            )
        //  onPageChanged: onboardnotifier.changePage,
        ),

          SizedBox(height: 26),
            SmoothPageIndicator(
              controller: controller,
              count: listPaths.length,
              effect: ColorTransitionEffect(
                dotHeight: 6,
                dotWidth: 6,
                dotColor: Color(0xFFE5F0FC),
                activeDotColor: Color(0xFF02131E)

                // strokeWidth: 5,
              ),
            ),
            SizedBox(height: 26),
            Container (
              padding: EdgeInsets.all(30),
              height: 120,

                decoration: BoxDecoration(
                    color: AppColors.yellowColor),

              child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                Text("Gotten your\n"
             " E-Bike yet?"),
                    SizedBox(width: 20),
                GestureDetector(
                    onTap :(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrackScreen()));
                    },
                    child:

                Container (
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    height: 56,
                    width: 160,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(26), color: AppColors.dark),

                    child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[Text("Your Order", textAlign: TextAlign.center, style:
                    TextStyle(color: AppColors.light, fontSize: 14 , fontWeight: FontWeight.w500)),


                      Icon(Icons.arrow_right_alt_sharp, color: AppColors.light,)]))
                )
              ])
            ),
            Container (
              color: AppColors.light,
child:
            Row (

                children: <Widget>[
              Image.asset("assets/images/moving_bike.gif", height: 160,
                width: 160,),

              SizedBox(width: 20,),

              Text("You too can join our \n""Elite squad of E-bikers", style: TextStyle(color: Color(0xFF424242), fontSize: 14, fontWeight: FontWeight.w400))
            ])
            )]
        )))
      )


    );}}