import 'package:delivery_app/track_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant/colors.dart';


class TrackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  Scaffold(

            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color(0xFFF1F6FB),
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              selectedFontSize: 13,
              unselectedFontSize: 13,
              selectedItemColor: Color(0xFF031420),
              iconSize: 20,
              items: [
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.home, size: 20),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Image.asset("assets/images/bookmark.png", height: 17, width: 20,),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Image.asset("assets/images/send.png", height: 17, width: 20,),
                ),


                BottomNavigationBarItem(
                  label: "",
                  icon: Image.asset("assets/images/setting.png", height: 17, width: 20,),
                ),
              ],
            ),
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
                children: <Widget> [
                  SizedBox(height: 50),
                  Container (
                    //margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
                      child:
                      Align(
                          alignment: Alignment.topLeft,
                          child:

                          Text("Hello good Morning!", style:
                          TextStyle( fontSize: 18 , fontWeight: FontWeight.w700, color: Color(0xFF092C4C)),))),

                  Container (
                    height: 280,
                    width: 320,
                    //padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                    // margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
                    child:
                    Stack (
                        children: <Widget>
                        [
                          Positioned.fill(  //
                            child: Image(
                              height: 280,
                              width: 320,
                              image: AssetImage('assets/images/track_bg.png'),
                              fit : BoxFit.fill,
                            ),
                          ),
                          Container (
                              padding: EdgeInsets.fromLTRB(24, 50, 24, 30),
                              child:

                              Column(
                                  children: <Widget>[

                                    Align(
                                      alignment: Alignment.topLeft,
                                      child:

                                      Text("Track Your Package", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF031725))),
                                    ),
                                    SizedBox(height: 8,),
                                    Text("Enter the receipt number that has been given by the officer",
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF96823D))),

                                    SizedBox(height: 20,),

                                    Container (
                                        padding: EdgeInsets.fromLTRB(30, 2, 0,0),
                                        height: 56,
                                        decoration: BoxDecoration(shape: BoxShape.rectangle, border: Border.all(
                                          color: Color(0xFF031420),
                                        ),
                                          borderRadius: BorderRadius.circular(26), ),
                                        child: TextField(
                                          //textAlign: TextAlign.center,
                                          style: TextStyle() ,
                                          decoration:
                                          InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Enter the receipt number',
                                          ),
                                        )),
                                    SizedBox(height: 10 ,),

                                    GestureDetector(
                                        onTap: (){

                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>TrackDetailScreen()));
                                        },
                                        child:

                                        Container (
                                            padding: EdgeInsets.fromLTRB(30, 0, 30,0),
                                            height: 56,
                                            decoration: BoxDecoration(shape: BoxShape.rectangle,  borderRadius: BorderRadius.circular(26), color: AppColors.dark),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Text("Track Now", style: TextStyle(color: AppColors.light),),

                                                  Image.asset("assets/images/arrow.png")
                                                ]))),



                                  ]
                              )) ,
                        ]
                    ),),

                  SizedBox(height: 40,),

                  Align(
                      alignment: Alignment.topLeft,
                      child:
                      Text("Tracking history", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF2E3E5C)))),
                  SizedBox(height: 10,),
                  ListTile(
                    contentPadding:EdgeInsets.all(0),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFFF1F6FB),
                      child: Image.asset("assets/images/car.png"),),
                    title:  Container (
                      margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child:Text("SCP9374826473", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFF1E3354)) ),
                    ),subtitle:  Container (
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 4),
                    child:Text("In the process", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF7A809D))),
                  ),  trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF1E3354)),
                  ),
                  SizedBox(height: 6,),

                  ListTile(
                    contentPadding:EdgeInsets.all(0),
                    leading: CircleAvatar(
                      radius: 30,

                      backgroundColor: Color(0xFFF1F6FB),
                      child: Image.asset("assets/images/truck.png"),),
                    title:  Container (
                      margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child:Text("SCP6653728497", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFF1E3354))),
                    ), subtitle: Container (
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 4),
                        child:Text("In delivery", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF7A809D)))),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF1E3354),),
                  )
                ])

        )));}}