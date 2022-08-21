import 'package:figma/ButtonPage/login_logout_page.dart';
import 'package:figma/TextFormfield/textformfield.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/s7ProfilePage/s7profilepage.dart';
import 'package:flutter/material.dart';

class s6ForgetPasswordPage extends StatefulWidget {
  const s6ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  State<s6ForgetPasswordPage> createState() => _s6ForgetPasswordPageState();
}

class _s6ForgetPasswordPageState extends State<s6ForgetPasswordPage> {
  TextEditingController _emailController=TextEditingController();
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
          SizedBox(
            height: 10,
          ),
            ButtonPage_LOGIN_LOGOUT(
              fontSize: 26,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => s7ProfilePage(),));
                },
              colorColor: Colors.blue,
              Colorr:  Colors.white,
              BordercolorColor: false,
              buttonname: "Continue",
            ),
    ]
    ),
      ),
    );
  }
}
