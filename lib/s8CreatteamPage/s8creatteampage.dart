import 'package:figma/ButtonPage/login_logout_page.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/s9teamPage/s9teampage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class s8CreatteamPage extends StatefulWidget {
  const s8CreatteamPage({Key? key}) : super(key: key);

  @override
  State<s8CreatteamPage> createState() => _s8CreatteamPageState();
}

class _s8CreatteamPageState extends State<s8CreatteamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baccolor,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,
        color: Colors.white,
          size: 20,
            ),
          ),
        centerTitle: true,
        title:SvgPicture.asset(
            "img/svg33.svg", //asset location
            semanticsLabel: 'SVG From asset folder.'
        ),
        backgroundColor: baccolor,
        elevation: 0,
      ),
              body: Container(
                margin: EdgeInsets.only(
                    top: 5,
                  right: 16,
                  left: 16,
                  bottom: 10

                ),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    ButtonPage_LOGIN_LOGOUT(
                      fontSize: 18,
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => s9teamPage(),));
                        },

                      colorColor: Colors.blue,
                      Colorr: Colors.white,
                      BordercolorColor:false,
                      buttonname: "Create Your Own Team",
                    ),
SizedBox(height: 15,),
                    Container(
                      height: 20,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text("Or",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),),
                    ),
 SizedBox(height: 15,),
                    ButtonPage_LOGIN_LOGOUT(
                      fontSize: 18,
                      onTap: (){},

                      colorColor: baccolor,
                      Colorr: Colors.white,
                      BordercolorColor:true,
                      buttonname: "Join our teem",
                    ),

                  ],
                ),
              ),
    );
  }
}
