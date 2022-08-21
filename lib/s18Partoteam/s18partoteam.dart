import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:figma/AppbarParto/partoappbar.dart';
import 'package:figma/BotttomSheet/bottomsheet.dart';
import 'package:figma/CalanderClass/calanderweek_date.dart';
import 'package:figma/FlotinActionButton/flotingactionbutton.dart';
import 'package:figma/ModelClassPage/PartoTeamPage/partoteempage.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../ModelClassPage/PartoTeamPage/partoteempage.dart';
import '../s19page/s19page.dart';

class s18Partoteam extends StatefulWidget {
  const s18Partoteam({Key? key}) : super(key: key);

  @override
  State<s18Partoteam> createState() => _s18PartoteamState();
}

class _s18PartoteamState extends State<s18Partoteam> {
  bool _isbool=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FlotinActionButton(
          IconColor: Colors.blue,
          icon: (Icons.add),
          ontap: (){
            showFlexibleBottomSheet(

              minHeight: 0,
              initHeight: 0.8,
              maxHeight: 0.8,
              context: context,
              isExpand: false,
              builder: (BuildContext context,
                  ScrollController scrollController,
                  double bottomSheetOffset) {
                return Container(
                  height: 600,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: SfCalendar(
                          view: CalendarView.month,
                          monthViewSettings: MonthViewSettings(showAgenda: true),  ),
                      ),
                Divider(
                  height: 2,
                  color: Colors.white,
                  thickness: 12,
                ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: _isbool==false?Colors.blue:Colors.white12,
                                  ),
                                  child: Text("Cancle",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  setState((){
                                    _isbool=!_isbool;
                                  });
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp(),));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: _isbool==true?Colors.red:Colors.blue,
                                  ),
                                  child: Text("submit",style: TextStyle(
                                    color: _isbool==false ?Colors.white :Colors.blue,
                                    fontSize: 18,
                                  ),),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
      ),

      bottomSheet: Bottomshee(),
      backgroundColor: baccolor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 34,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: double.infinity,
          //    color: Colors.blue,
              child: PartoAppbar(
                ontap: (){
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: double.infinity,
            //  color: Colors.blue,
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.store,color: Colors.white,)
                     , SizedBox(
                        width: 10,
                      ),
                      Text("March, 04",style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                      ),),
                    ],
                  ),

                  Text("8 Tasks Today",style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),)
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Expanded(
                flex:2,
                child: Container(
                 // color: Colors.white,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: Datatimelist.length,
                      itemBuilder: (context, index){
                        return InkWell(
                          onTap: (){},
                          child: Container(
                            height: 70,
                            width: 100,
                            margin: EdgeInsets.only(
                              left: 10,
                              top: 5,
                              bottom: 5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11)
                            ,  color: Colors.pink,

                            ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${Datatimelist[index].datee}",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 44,
                                    ),
                                    child: Text("${Datatimelist[index].datename}",style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ),
                                ],
                              ),
                          ),
                        );
                      }),
                ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex:6,
             child: Container(
                // color: Colors.white,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: partoList.length,
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){},
                        child: Container(
                          height:120,
                          width: double.infinity,



                          margin:EdgeInsets.only(
                            top: 20,
                            left: 20,



                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11)
                            ,  color: Colors.pink[100],
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${partoList[index].work}",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),),

                                  SizedBox(height: 10,),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: partoList[index].Circlecolorss,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("${partoList[index].about}",style: TextStyle(
                                color: Colors.white,
                              ),),
                              Text("${partoList[index].datetime}",style: TextStyle(
                                color: Colors.white,
                              ),),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
