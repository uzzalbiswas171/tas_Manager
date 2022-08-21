import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/s16PartoPage/s16pade.dart';
import 'package:flutter/material.dart';

class S15Page extends StatefulWidget {
  const S15Page({Key? key}) : super(key: key);

  @override
  State<S15Page> createState() => _S15PageState();
}

class _S15PageState extends State<S15Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => s16pageParto(),));
      },
      backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      backgroundColor: baccolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: baccolor,
        leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
        title: Text("Project",style: TextStyle(
          color: Colors.white,
        ),),
      ),

      body:Container(
         color: baccolor,
        height: double.infinity,
        width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 16,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)
                                ,color: Colors.blue,
                              ),
                              alignment: Alignment.center,
                            ),

                            Text("16",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),

                      Expanded(
                          flex: 9,
                          child: Container(
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index){

                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)
                                      ,color: Colors.blue,
                                    ),
                                    alignment: Alignment.center,
                                    child:   Text("16",style: TextStyle(color: Colors.white),)
                                  ),

                                  Text("ALL",style: TextStyle(color: Colors.white),)
                                   ],
                                 ),
                            );

                            }
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                  flex: 9,
                  child: Container(
                    width: double.infinity,
                     child: ListView.builder(
                       scrollDirection: Axis.vertical,
                       itemCount: 10,
                         itemBuilder: (context,index){
                         return Container(
                           height: 200,
                           width: double.infinity,
                           margin: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             color: Colors.white12,
                             borderRadius: BorderRadius.circular(22),
                             ),
                           child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Expanded(
                                   flex:2,
                                   child: Container(
                                     margin: EdgeInsets.only(
                                       left: 16,
                                       right: 16,
                                     ),
                                     height: 20,
                                     width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("web Design",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            ),
                                          ),

                                          Row(
                                            children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.greenAccent,
                                              radius: 3,
                                            ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text("2 Day lateer")

                                            ],
                                          )
                                        ],
                                      ),
                                   ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(
                                   left: 16,
                                   right: 16,
                                 ),
                                 height: 20,
                                 width: double.infinity,
                                 child: Text("Pt FGDVH",style: TextStyle(
                                   color: Colors.white
                                 ),),
                               ),
                               Expanded(
                                   flex:2,
                                   child: Container(
                                     height: 20,
                                     width: double.infinity,
                                   child: Slider(
                                     max: 100.00,
                                        min: 1.00,
                                        label: "dsgf",
                                       activeColor: Colors.greenAccent,
                                       value: 50.00,
                                       onChanged: (value){
                                     }
                                   ),
                                   ),
                               ),

                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.all(10),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Row(
                                       children: [
                                         CircleAvatar(
                                           radius: 4,
                                           backgroundColor: Colors.greenAccent,
                                         ),
                                         SizedBox(
                                           width: 5,
                                         ),
                                         Text("2 Days Latter",style: TextStyle(
                                           color: Colors.white
                                         ),),
                                       ],
                                     ),

                                     Row(
                                       children: [
                                         CircleAvatar(
                                           radius: 10,
                                           backgroundColor: Colors.white,
                                         ),
                                         SizedBox(
                                           width: 5,
                                         ),
                                         CircleAvatar(
                                           radius: 10,
                                           backgroundColor: Colors.white,
                                         ),
                                         SizedBox(
                                           width: 5,
                                         ),
                                         CircleAvatar(
                                           radius: 10,
                                           backgroundColor: Colors.white,
                                         ),
                                         SizedBox(
                                           width: 5,
                                         ),
                                         CircleAvatar(
                                           radius: 10,
                                           backgroundColor: Colors.white,
                                         ),
                                         SizedBox(
                                           width: 5,
                                         ),
                                       ],
                                     )
                                   ],
                                 ),
                               ),
                             ],
                           ),
                           );
                         }
                      ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
