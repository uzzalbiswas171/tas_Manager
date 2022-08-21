

import 'package:figma/BotttomSheet/bottomsheet.dart';

import 'package:figma/MyTask/mytaskpage.dart';

import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/s14PartoteamPage/s14partopage.dart';
import 'package:flutter/material.dart';

import '../BottomModalSWhteet/bottommodalsheet.dart';
import '../Stl/projecttas.dart';

class s13Pteamworpage extends StatefulWidget {
  const s13Pteamworpage({Key? key}) : super(key: key);

  @override
  State<s13Pteamworpage> createState() => _s13PteamworpageState();
}

class _s13PteamworpageState extends State<s13Pteamworpage> {
  TextEditingController _NameControllor=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CircleAvatar(
        radius: 44,
        child: FloatingActionButton(
            onPressed: (){
              showModalBottomSheet(
                backgroundColor: Colors.white12,
                  context: context,
                  builder: (context){
                    return BottomModalSWhteet(ontap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>s14PartoteamPage()));
                    },);
                  });
            },
          backgroundColor: Colors.blue,
          child: Icon(Icons.add,color: Colors.white,size: 35,),
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
                child: Container(
                //  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white38,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                            ),
                            child: Text("Parto Teem",style: TextStyle(
                               color: Colors.white,
                              fontSize: 18,

                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                            ),
                            child: Icon(Icons.keyboard_arrow_down_outlined,
                              color:Colors.white,
                              size:22,
                            ),
                          )
                        ],
                      ),
                      
                      Icon(Icons.search,
                        color: Colors.white,
                        size: 27,)
                    ],
                  ),
                )
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
