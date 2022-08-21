
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:figma/ModalsheetFlotingActionbutton/flotingaction_bootommodalsheet.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:flutter/material.dart';

import '../ModelClassPage/modelclass.dart';

class s16pageParto extends StatefulWidget {
  const s16pageParto({Key? key}) : super(key: key);

  @override
  State<s16pageParto> createState() => _s16pagePartoState();
}

class _s16pagePartoState extends State<s16pageParto> {
  TextEditingController _nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baccolor,
      floatingActionButton: FloatingActionButton(
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
                return ModalsheetFlotingActionbutton();
              },
            );
          },
        child: Icon(Icons.add,color: Colors.white,size: 25,),
          backgroundColor: Colors.blue,
      ),

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: baccolor,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Project Details"),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Expanded(
                       child: Container(
                         height: 40,
                         width: double.infinity,
                         child: Text("Web Design-Pt Mencari Cinta Sejati",style: TextStyle(
                           color: Colors.white,
                           fontSize: 22,
                           fontWeight: FontWeight.w400,
                          ),
                         ),
                       ),
                     ),
                     Expanded( child:Container(
                       width: double.infinity,
                       height: 20,
                       child: Row(
                         children: [
                           CircleAvatar(

                             radius: 4,
                             backgroundColor: Colors.white,
                           ),
                           Text("  12 post Totals",style: TextStyle(
                               color: Colors.white
                           ),),
                         ],
                       ),
                     ),),
          Expanded( child:Container(
                       height: 30,
                       width: double.infinity,
                       child: Text("Goals",style: TextStyle(
                         color: Colors.white
                       ),),
                     ),),

          Expanded( child:Container(
                       width: double.infinity,
                       height: 80,
                       child: Text("jg efkhhffu eyuyiwdy dhdud"
                           " uhsduhbh uhsdh sduhuywi wueuyuywe uyuweuyuwe uyuwyeuywiid"
                           "e uyuyweuyuywe uyuyuywe uyuyweuy uyweuyew",style: TextStyle(
                         color: Colors.white
                       ),),
                     ),),
          Expanded( child:Container(
                       height: 25,
                       width: double.infinity,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Icon(Icons.storefront,color: Colors.white,),
                               Text("March 13, 17.00 PM",style: TextStyle(color: Colors.white),)
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Icon(Icons.storefront,color: Colors.white,),
                               Text("March 13, 17.00 PM",style: TextStyle(color: Colors.white),)
                             ],
                           ),
                         ],
                       ),
                     ),
          ),


                   ],
                 ),
              ),
            ),

            Expanded(
              flex: 5,
              child: Container(
                 width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 25,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total (5/12)",style: TextStyle(
                              color: Colors.white,
                            ),),

                            Slider(
                              min: 1.00,
                              max: 100,
                              value: 50.00,
                                onChanged: (value){
                                  return activate();
                                },
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 7,
                      child: Container(
                         width: double.infinity,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: myList.length,
                            itemBuilder: (context, index){
                              return Container(
                                alignment: Alignment.center,
                                height: 60,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Icon(Icons.check_box_outlined,color: Colors.white,),
                                    SizedBox(width: 20,),
                                    Text("${myList[index].Name}",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),)
                                  ],
                                ),
                              );
                            }),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
