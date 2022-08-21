import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:figma/ButtonPage/login_logout_page.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/s17teamTask/s17teamtaskpage.dart';
import 'package:flutter/material.dart';

import '../TextFormfield/textformfield.dart';

class ModalsheetFlotingActionbutton extends StatelessWidget {
  const ModalsheetFlotingActionbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController=TextEditingController();
    return Container(
      height: 600,
      width: double.infinity,
      // color: Colors.white12,
      padding: EdgeInsets.only(
        top: 25,
        right: 16,
        left: 16,
      ),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Container(
            // color:baccolor,
            height: 30,
            width: double.infinity,
            child: Text("Add Tags",style: TextStyle(
              fontSize: 18,
              color: Colors.white,
                ),
              ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            //  color: baccolor,
            height: 22,
            width: double.infinity,
            child: Text("Tag Name",style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),),
          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: TextFormFieldPage(
                controller: _nameController,
                hintText: "Enter your name tag",
                TextColor: Colors.white70,
                prefixicon: IconButton(onPressed: (){},
                    icon: Icon(Icons.person,color: Colors.white,)
                ),
                borderradius: BorderRadius.circular(22),
                obscureText: false,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 24,
            width: double.infinity,
            child: Text("Color",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 7,
            child: Container(
              // color: baccolor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: double.infinity,
                      //         color: Colors.blue,
                      child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: Colorlist.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor:Colorlist[index].a
                              ),
                            );
                          }
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      //   color: Colors.red,
                      child: ButtonPage_LOGIN_LOGOUT(fontSize: 16,
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => s17TeamTaskPage(),));
                        },
                        buttonname: "Done",
                        Colorr: Colors.white,
                        BordercolorColor: false,
                        colorColor: Colors.blue,

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
