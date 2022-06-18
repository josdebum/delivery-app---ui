import 'package:delivery_app/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'constant/colors.dart';

class TrackDetailScreen extends StatelessWidget {

  DraggableScrollableController _scrollController = new DraggableScrollableController();
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

      body: Stack (
          children: <Widget>
      [
      Positioned.fill(  //
      child: Image(
          image: AssetImage('assets/images/tracking_details_bg.png'),
      fit : BoxFit.fill,
    ),
    ),

       Column(children: <Widget>[

         SizedBox(height: 30,),

         ListTile (leading: Container (
             margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
             child :Icon(Icons.arrow_back_ios_outlined, size: 16, color:
         Color(0xFF3B4A66),)), title:
         Center (
            // margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
             child: Text("Tracking Details", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color:
             Color(0xFF092C4C))),),

         trailing: SizedBox(width: 16,)),

         SizedBox(height: 30),

         Container(
           height: 84,
             width: 300,
             padding: EdgeInsets.all(16),
             decoration: BoxDecoration(shape: BoxShape.rectangle,
                 borderRadius: BorderRadius.circular(50), color: Color(0xFFFFD337),),

                 child:Container (
                     //padding: EdgeInsets.fromLTRB(28, 0, 0,0),
                     height: 56,
                     decoration: BoxDecoration(shape: BoxShape.rectangle, border: Border.all(
                       color: Color(0xFF031420),
                     ),
                       borderRadius: BorderRadius.circular(30), ),
                     child: TextField(
                       textAlign: TextAlign.center,
                       style: TextStyle(color: Color(0xFF051F32,) ,fontSize: 14, fontWeight: FontWeight.w500) ,
                       decoration:
                       InputDecoration(
                         border: InputBorder.none,
                         hintText: 'SCP6653728497',
                       ),
                     )),)

         ,
       ]),



            Center(
        child: DraggableScrollableSheet(
          controller: _scrollController,

          initialChildSize: 0.15,
          minChildSize: 0.15,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container (
                padding:  EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(shape: BoxShape.rectangle,  borderRadius: BorderRadius.circular(30), color: AppColors.light),
                child: Stack (children: <Widget>[

              ListView(
                  shrinkWrap: true,
                  controller: scrollController,
                  children: <Widget>[

                    ListTile(

                        title: Text("Estimate arrives in",
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color:
                            Color(0xFF7A809D))),
                        subtitle:
                        Text("2h 40m", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: Color(0xFF2E3E5C))), trailing: Image.asset
                      ("assets/images/dot.png"))]),

                  Positioned (
                    left: 150,
                    top: 5,
                    child: Container(
                      decoration:
                      BoxDecoration(shape: BoxShape.rectangle,  borderRadius: BorderRadius.circular(12), color: Color(0xFFDBE2E9)),
                      height: 5,
                        width: 40,)

                  ),



                  Positioned (
                   // left: 0,
                   top: 70,

                    child:  Container (
                      width: 320,
                        height: 240,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: EdgeInsets.fromLTRB(10, 40, 10, 20),
                        decoration:
                        BoxDecoration(shape: BoxShape.rectangle,  borderRadius:
                        BorderRadius.circular(20), color: Color(0xFFFFD337)),
                        child: Column(children: <Widget>[
                          ListTile (
                              contentPadding:EdgeInsets.all(0),
                              title: Text("Sukabumi, Indonesia",
                                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF2E3E5C))),
                              subtitle: Text("No receipt : SCP6653728497",
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF96823D)))),

                          Divider (height: 2,),

                          ListTile (
                              contentPadding:EdgeInsets.all(0),
                              title: Text("2,50 USD", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF2E3E5C))),
                              subtitle: Text("Postal fee",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF96823D)))),

                          Divider (height: 2,),

                          ListTile (
                              contentPadding:EdgeInsets.all(0),
                              title: Text("Bali, Indonesia", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF2E3E5C))),
                              subtitle: Text("Parcel, 24kg",
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF96823D)))),

                        ]))),

              Positioned (
                  left: 14,
                  top: 380,

                  child: Text("History",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF2E3E5C)))),

              Container
              (
                padding:  EdgeInsets.fromLTRB(10, 0, 10,0),
                margin: EdgeInsets.fromLTRB(0, 400, 0, 0),
              decoration: BoxDecoration(shape: BoxShape.rectangle,  borderRadius: BorderRadius.circular(12), color: AppColors.light),

              child:


              ListView(
                controller: scrollController,
                shrinkWrap: true,
                children: [

                  TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.1,
                    isFirst: true,
                    endChild: ListTile(
                      contentPadding:EdgeInsets.all(0),
                      title: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 6),
                        child:Text("In Delivery",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFF1E3354))),
                      ), subtitle: Container (
                        margin: EdgeInsets.fromLTRB(10, 6, 0, 40),
                        child: Text("Bali, Indonesia", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF7A809D))),
                      ),trailing: Text("19.00 PM", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF7A809D))),
                    ),

                    afterLineStyle: const LineStyle(
                      color: Color(0xFFDFE6ED),
                      thickness: 3,
                    ),
                    indicatorStyle:  IndicatorStyle(
                      height: 60,
                      width: 60,
                      indicatorXY: 0.3,
                      indicator:

                      CircleAvatar(
                        radius: 40,

                        backgroundColor: Color(0xFFFFD337),
                        child: Image.asset("assets/images/yellow_truck.png"),),
                      color: Colors.purple,
                    ),
                    beforeLineStyle: const LineStyle(
                      color: Colors.purple,
                      thickness: 6,
                    ),
                  ),

                  TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.1,
                    isFirst: true,
                    endChild: ListTile(
                      contentPadding:EdgeInsets.all(0),
                      title: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 6),
                        child:Text("Transit - Sending City",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFF1E3354))),
                      ), subtitle: Container (
                      margin: EdgeInsets.fromLTRB(10, 6, 0, 40),
                      child: Text("Jakarta, Indonesia", style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF7A809D))),
                    ),trailing: Text("19.00 PM", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF7A809D))),
                    ),

                    afterLineStyle: const LineStyle(
                      color: Color(0xFFDFE6ED),
                      thickness: 3,
                    ),
                    indicatorStyle:  IndicatorStyle(
                      height: 60,
                      width: 60,
                      indicatorXY: 0.3,
                      indicator:

                      CircleAvatar(
                        radius: 40,

                        backgroundColor: Color(0xFFF1F6FB),
                        child: Image.asset("assets/images/transit.png"),),
                      color: Colors.purple,
                    ),
                    beforeLineStyle: const LineStyle(
                      color: Colors.purple,
                      thickness: 3,
                    ),
                  ),

                  TimelineTile(
                    isLast: true,
                    alignment: TimelineAlign.manual,
                    lineXY: 0.1,
                    isFirst: true,
                    endChild: ListTile(
                      contentPadding:EdgeInsets.all(0),
                      title: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 6),
                        child:Text("Send Form Sukabumi",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFF1E3354))),
                      ), subtitle: Container (
                      margin: EdgeInsets.fromLTRB(10, 6, 0, 40),
                      child: Text("Sukabumi, Indonesia", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF7A809D))),
                    ),trailing: Text("19.00 PM", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF7A809D))),
                    ),

                    indicatorStyle:  IndicatorStyle(
                      height: 60,
                      width: 60,
                      indicatorXY: 0.3,
                      indicator:

                      CircleAvatar(
                        radius: 40,

                        backgroundColor: Color(0xFFF1F6FB),
                        child: Image.asset("assets/images/car.png"),),
                      //color: Colors.purple,
                    ),

                  ),
                ],
              ),
            ),

            ]));
          },
        ),
      ),
    ])));
  }
  }
