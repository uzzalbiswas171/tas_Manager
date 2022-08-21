import 'package:figma/s11PageMobile/s11pagemobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ButtonPage/login_logout_page.dart';
import '../TextFormfield/textformfield.dart';
import '../Widget/ColorPage/colorpage.dart';

class s10CodeTeamPage extends StatefulWidget {
  const s10CodeTeamPage({Key? key}) : super(key: key);

  @override
  State<s10CodeTeamPage> createState() => _s10CodeTeamPageState();
}

class _s10CodeTeamPageState extends State<s10CodeTeamPage> {
  TextEditingController _NAmeController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "img/svg4.svg", //asset location
            semanticsLabel: 'SVG From asset folder.'
        ),
        backgroundColor: baccolor,
        elevation: 0,
      ),
      backgroundColor: baccolor,
      body: Container(
        margin: EdgeInsets.only(
          left:16,
          right: 16,
        ),
        color: baccolor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            ButtonPage_LOGIN_LOGOUT(
              fontSize: 18,
              onTap: (){},
              buttonname: "Enter ypur Code Team ?",
              BordercolorColor:false,
              Colorr: Colors.white,
            ),
            Container(
              height: 20,
              width: double.infinity,
              child: Text("Code Team",style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Colors.white38
              ),),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    color:Colors.white,
                    width: 1,
                  )
              ),
              child: TextFormFieldPage(
                controller: _NAmeController,
                hintText: "eg xjfffff",
                TextColor: Colors.white38,
                prefixicon: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => s10CodeTeamPage(),));
                },
                  icon: Icon(Icons.email_outlined,size: 22,
                    color:Colors.white54,
                  ),
                ),
                borderradius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  topLeft: Radius.circular(22),
                ),
                obscureText: false,
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.45,
                    bottom: MediaQuery.of(context).size.height/10,
                  ),
                  child: ButtonPage_LOGIN_LOGOUT(
                      buttonname: "Continue",
                      fontSize: 22,
                      BordercolorColor: false,
                      Colorr: Colors.white,
                      colorColor: Colors.blue,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => s11PageMobile(),));
                      }),
                ))
          ],
        ),
      ),
    );
  }
}
