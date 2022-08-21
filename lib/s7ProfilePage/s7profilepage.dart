import 'package:figma/ButtonPage/login_logout_page.dart';
import 'package:figma/TextFormfield/textformfield.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/s8CreatteamPage/s8creatteampage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class s7ProfilePage extends StatefulWidget {
  const s7ProfilePage({Key? key}) : super(key: key);

  @override
  State<s7ProfilePage> createState() => _s7ProfilePageState();
}

class _s7ProfilePageState extends State<s7ProfilePage> {
  TextEditingController _NAmeController=TextEditingController();
  bool _IsVisibility=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: baccolor,
     body: Container(
       height: double.infinity,
       width: double.infinity,
       margin: EdgeInsets.only(
         left: 15,
         right: 15,
       ),
       child:Column(
         children: [
           Container(
             height:
             50,
             width: double.infinity,
           //  color: Colors.blue,
           ),

           Container(
             alignment: Alignment.center,
             height: 25,
            // color: Colors.white,
             width: double.infinity,
             child:SvgPicture.asset(
                 "img/svg3.svg", //asset location
               //  color: Colors.red, //svg color
                 semanticsLabel: 'SVG From asset folder.'
             ),
           ),
          SizedBox(
            height: 24,
          ),
           Container(
             alignment: Alignment.center,
             height: 20,
             width: double.infinity,
             child: Text("Complete Your Profile",style: TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.w300,
               color: Colors.white,
               ),
             ),
           ),

           Container(
             height: 100,
             width: double.infinity,
           //  color: Colors.blue,
             alignment: Alignment.center,
             child: CircleAvatar(
               backgroundColor: Colors.white38,
              child: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 27,),
               radius: 35,
             ),
           ),
            Container(
              height: 20,
              width: double.infinity,
             // color: Colors.white38,
              child: Text("Your Full Name",style: TextStyle(
                color: Colors.white38,
                fontSize: 16,
                ),
              ),
            ),
           SizedBox(
             height: 10,
           ),
           Container(
             height: 50,
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(22),
             //  color: Colors.white,
               border: Border.all(
                 width: 1,
                 color: Colors.white,),
             ),
             child: TextFormFieldPage(
                 controller: _NAmeController,
                 hintText: "Enter your full name",
                 TextColor: Colors.white38,
                 prefixicon: IconButton(onPressed: (){},
                     icon: Icon(Icons.person,size: 22,
                         color:Colors.white38
                     ),
                 ),
                 borderradius: BorderRadius.only(
                   bottomLeft: Radius.circular(22),
                   topLeft: Radius.circular(22),
                 ),
                 obscureText: false,
             ),
           ),
           Container(
             margin: EdgeInsets.only(
               top: 10,
             ),
             height: 20,
             width: double.infinity,
             // color: Colors.white38,
             child: Text("Your Password",style: TextStyle(
               color: Colors.white38,
               fontSize: 16,
             ),
             ),
           ),
           SizedBox(
             height: 10,
           ),
           Container(
             height: 50,
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(22),
               //  color: Colors.white,
               border: Border.all(
                 width: 1,
                 color: Colors.white,),
             ),
             child: TextFormFieldPage(
               controller: _NAmeController,
               hintText: "Enter your Password",
               TextColor: Colors.white38,
               prefixicon: IconButton(onPressed: (){
                 setState((){
                   _IsVisibility=!_IsVisibility;
                 });
               },
                 icon: Icon(_IsVisibility==true?Icons.visibility_off: Icons.visibility,size: 22,
                     color:Colors.white38
                 ),
               ),
               borderradius: BorderRadius.only(
                 bottomLeft: Radius.circular(22),
                 topLeft: Radius.circular(22),
               ),
               obscureText: _IsVisibility,
             ),
           ),
                SizedBox(
                  height: 10,
                ),
           ButtonPage_LOGIN_LOGOUT(
             fontSize: 26,
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => s8CreatteamPage(),));
               },
             buttonname: "Continue",
             BordercolorColor: false,
             Colorr: Colors.white,
             colorColor: Colors.blue,

           )

         ],
       ),
     ),
    );
  }
}
