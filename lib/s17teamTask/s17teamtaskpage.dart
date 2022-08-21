import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:figma/BottomModalSWhteet/bottommodalsheet.dart';
import 'package:figma/BotttomSheet/bottomsheet.dart';
import 'package:figma/ButtonPage/login_logout_page.dart';
import 'package:figma/MyTask/mytaskpage.dart';
import 'package:figma/Stl/projecttas.dart';
import 'package:figma/TextFormfield/textformfield.dart';
import 'package:figma/s18Partoteam/s18partoteam.dart';
import 'package:flutter/material.dart';

import '../AppbarParto/partoappbar.dart';
import '../Widget/ColorPage/colorpage.dart';

class s17TeamTaskPage extends StatefulWidget {
  const s17TeamTaskPage({Key? key}) : super(key: key);

  @override
  State<s17TeamTaskPage> createState() => _s17TeamTaskPageState();
}

class _s17TeamTaskPageState extends State<s17TeamTaskPage> {
  TextEditingController _NameControllor=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CircleAvatar(
        radius: 44,

        child: FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Icon(Icons.add,size: 33,color: Colors.white,),
            onPressed: (){
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
                    height: 900,
                    width: double.infinity,
                    color: baccolor,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child:  Container(
                              padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  top: 5,
                                  bottom: 5
                              ),
                              decoration: BoxDecoration(
                                color:Colors.white70,
                                borderRadius: BorderRadius.circular(22),
                              ),

                              margin: EdgeInsets.all(10),

                              width: double.infinity,

                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: 16,
                              left: 16,
                            ),
                            height: 20,
                            alignment: Alignment.centerLeft,
                            width: double.infinity,
                            child: Text("Add New Task",style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),),
                          ),
                          Expanded(
                            flex: 2,
                            child:  Container(
                              padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16
                              ),
                              width: double.infinity,
                              //         color:Colors.blue,
                              alignment: Alignment.centerLeft,
                              child: Text("jgssdkhfidshfihdsxizhfidshfihdsihfusdkgfdsifgisdgfigdsufgudsgfuygsdfuyudysgf",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 16
                            ),
                            alignment: Alignment.centerLeft,
                            //  color: Colors.white,
                            height: 25,
                            child:Text("Name Task",style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 16,
                                right: 16,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  )
                              ),
                              child: TextFormFieldPage(
                                controller: _NameControllor,
                                hintText: "Enter your name task",
                                TextColor: Colors.white,
                                obscureText: false,
                                prefixicon: IconButton(onPressed: (){},
                                    icon: Icon(Icons.account_circle_outlined,color:Colors.white))
                                , borderradius:BorderRadius.circular(22),

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 16,
                                right: 16
                            ),
                            height: 20,
                            child: Row(
                              children: [
                                Icon(Icons.add,color: Colors.white,),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("Add New task",style: TextStyle(
                                  color: Colors.white,
                                ),)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16
                              ),
                              child: ButtonPage_LOGIN_LOGOUT(fontSize: 15,
                                  buttonname: "Add",
                                  Colorr: Colors.white,
                                  colorColor: Colors.blue,
                                  BordercolorColor: false,
                                  onTap: (){
                                         Navigator.push(context, MaterialPageRoute(builder: (context) => s18Partoteam(),));
                                  }),
                            ),
                          ),
                        ]
                    ),
                  );
                },
              );
            }
        ),
      ),
      bottomSheet: Bottomshee(),
      backgroundColor: baccolor,
      body: Container(
        margin: EdgeInsets.only(
          top: 20,
          right: 16,
          left: 16,

        ),
        color: baccolor,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: PartoAppbar(),
            ),

            Container(
                height: 30,
                width: double.infinity,
                child: Text("Project Tas",style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                ),)
            ),
            Expanded(
              flex: 2,
              child: Container(
                  height: double.infinity,
                  // color: Colors.green,
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child:SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProjectTas_Page(
                          Containercolors: Colors.orange,
                          Review: "5",
                          Reviewtext: "Charging",
                        ),
                        ProjectTas_Page(
                          Containercolors: Colors.indigo,
                          Review: "7",
                          Reviewtext: "ListV",
                        ),
                        ProjectTas_Page(
                          Containercolors: Colors.grey,
                          Review: "4",
                          Reviewtext: "Charging",
                        ),

                      ],
                    ),
                  )
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Tas",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),),
                  InkWell(
                    onTap: (){

                    },
                    child: Text("See More",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 8,
                child: Container(
                  color: baccolor,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (context, index){
                        return MyTask();
                      }

                  ),

                )
            ),
          ],
        ),
      ),
    );
  }
}
