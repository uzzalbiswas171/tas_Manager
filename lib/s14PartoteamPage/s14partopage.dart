import 'package:figma/ButtonPage/login_logout_page.dart';
import 'package:figma/TextFormfield/textformfield.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/s15ProjectPage/s15page.dart';
import 'package:flutter/material.dart';

import '../ModelClassPage/modelclass.dart';

class s14PartoteamPage extends StatefulWidget {
  const s14PartoteamPage({Key? key}) : super(key: key);

  @override
  State<s14PartoteamPage> createState() => _s14PartoteamPageState();
}

class _s14PartoteamPageState extends State<s14PartoteamPage> {
  TextEditingController _NameControllor=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add,size: 33,color: Colors.white,),
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (context){
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
                          child: Text("Add New Member",style: TextStyle(
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
                          child:Text("Team Member",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          flex: 2,
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
                              hintText: "Select Your Team",
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
                                       Text("Add Member",style: TextStyle(
                                         color: Colors.white,
                                       ),)
                                    ],
                                  ),
                                ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 16,
                                right: 16
                            ),
                            child: ButtonPage_LOGIN_LOGOUT(fontSize: 15,
                                buttonname: "Invite",
                                Colorr: Colors.white,
                                colorColor: Colors.blue,
                                BordercolorColor: false,
                                onTap: (){
                                         Navigator.push(context, MaterialPageRoute(builder: (context) => S15Page(),));
                                }),
                          ),
                        ),
                    ]
                    ),
                  );
                });
           }
          ),
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Parto team",style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w300,
        ),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: baccolor,
        child: GridView.builder(
          itemCount: myList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                crossAxisCount: 2),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.all(11),
                margin: EdgeInsets.all(7),
                 decoration: BoxDecoration(
                   color: Colors.white12,
                   borderRadius: BorderRadius.circular(22),
                 ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                           child: Row(
                             children: [
                               Stack(
                                 children: [
                                   Container(
                                     child: CircleAvatar(
                                       backgroundColor: Colors.white70,
                                       radius: 33,
                                     ),
                                   ),
                                   Positioned(
                                       bottom: 4,
                                       right: 4,
                                       child: CircleAvatar(
                                         backgroundColor: Colors.green,
                                         radius: 7,
                                       ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                        ),
                    ),
                    Expanded(
                      flex: 1,
                        child: Text(
                          "${myList[index].Name}",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                           ),
                        ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "${myList[index].Email}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                height: 100,
                width: 100,
              );
            }),


      ),
    );
  }
}
