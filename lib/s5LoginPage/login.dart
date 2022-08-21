import 'package:figma/TextFormfield/textformfield.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/s6ForgetPasswordPage/s6forgetpasswordpage.dart';
import 'package:flutter/material.dart';

import '../ButtonPage/login_logout_page.dart';

class sLoginPage extends StatefulWidget {
  const sLoginPage({Key? key}) : super(key: key);

  @override
  State<sLoginPage> createState() => _sLoginPageState();
}

class _sLoginPageState extends State<sLoginPage> {
      TextEditingController _emailController=TextEditingController();
      TextEditingController _passController=TextEditingController();
      bool _setvalue=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baccolor,
      body: Container(
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
             // color: Colors.red,
              margin: EdgeInsets.only(
                top: 43,
              ),
              height: 25,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.clear,
                    size: 22,
                    color:Colors.white,
                  ),
                  Text("Sign up",style:TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ), ),
                  
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 34,
                bottom: 17,
              ),
              child: Text("Enter your email",style: TextStyle(

                  color: Colors.white),),
            ),
            Container(
              margin: EdgeInsets.only(
              ),
              padding: EdgeInsets.only(
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
                child:TextFormFieldPage(
                  obscureText: false,
                  controller: _emailController,
                  hintText: 'Enter Your Email',
                  TextColor: Colors.white,
                  kybordType_dresimel: true,
                  kybordType_sign: true,
                  borderradius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    bottomLeft: Radius.circular(22)
                  ),
                  prefixicon: IconButton(onPressed: (){}, 
                      icon: Icon(Icons.add,size: 33,color: Colors.white,),
                      color: Colors.white,

                  ),

                ),
            ),

            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 17,
              ),
              child: Text("Enter your password",style: TextStyle(
                  color: Colors.white),),
            ),
           Container(
             decoration: BoxDecoration(
               border: Border.all(color: Colors.white,width: 1),
               borderRadius: BorderRadius.circular(22)
             ),
             child: TextFormFieldPage(
                 obscureText: _setvalue,
                 kybordType_sign: true,
                 kybordType_dresimel: true,
                 controller: _passController,
                 hintText: "Entew Password",
                 TextColor: Colors.white, 
                 prefixicon: IconButton(
                     onPressed: (){
                   setState((){
                     _setvalue=!_setvalue;
                   });
                 },
                     icon: Icon(_setvalue==false ? Icons.visibility_off : Icons.visibility),color:Colors.white),
                 borderradius: BorderRadius.only(
                   topLeft: Radius.circular(23),
                   bottomLeft: Radius.circular(23),
                 ),
             ),
           ),
            SizedBox(
              height: 10,
            ),

            ButtonPage_LOGIN_LOGOUT(
              fontSize: 26,
              onTap: () {
            },
            buttonname: "Login",
              BordercolorColor: false,
              Colorr:Colors.white ,
              colorColor: Colors.blue,

            ),
SizedBox(
  height: 10,
),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => s6ForgetPasswordPage(),));
            },
            child: Container(
              height: 20,
              alignment: Alignment.center,
              child: Text("Forget your password",style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.w500,
                fontSize: 17,
              ),),
            ),
          ),

          ],
        ),
      ),
    );
  }
}
