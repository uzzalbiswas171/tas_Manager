import 'package:figma/ButtonPage/login_logout_page.dart';
import 'package:figma/TextFormfield/textformfield.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:flutter/material.dart';

class BottomModalSWhteet extends StatelessWidget {
  const BottomModalSWhteet({Key? key,required this.ontap}) : super(key: key);

  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    TextEditingController _NameControllor=TextEditingController();

    return Container(
      height: 800,
      width: double.infinity,
      color: baccolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            margin: EdgeInsets.only(
                top: 10
            ),
            child: Text("Add New Project",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),),
          ),
          Container(
            height: 40,
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )
            ),
            child: TextFormFieldPage(
              obscureText: false,
              borderradius:BorderRadius.circular(11),
              TextColor: Colors.white,
              hintText: "Enter Your name",
              controller: _NameControllor,
              prefixicon:IconButton(onPressed: (){},
                  icon: Icon(Icons.add_call,color: Colors.white,)
              ),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              //  color: Colors.blue,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )
            ),
            child: TextFormFieldPage(
              obscureText: false,
              borderradius:BorderRadius.circular(11),
              TextColor: Colors.white,
              hintText: "Slect Your team",
              controller: _NameControllor,
              prefixicon:IconButton(onPressed: (){},
                  icon: Icon(Icons.account_circle_outlined,color: Colors.white,)
              ),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )
            ),
            child: TextFormFieldPage(
              obscureText: false,
              borderradius:BorderRadius.circular(11),
              TextColor: Colors.white,
              hintText: "On Going",
              controller: _NameControllor,
              prefixicon:IconButton(onPressed: (){},
                  icon: Icon(Icons.shop,color: Colors.white,)
              ),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )
            ),
            child: TextFormFieldPage(
              obscureText: false,
              borderradius:BorderRadius.circular(11),
              TextColor: Colors.white,
              hintText: "Date",
              controller: _NameControllor,
              prefixicon:IconButton(onPressed: (){},
                  icon: Icon(Icons.shop,color: Colors.white,)
              ),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 20,
            ),
            margin: EdgeInsets.only(
                top: 10
            ),
            child: Row(
              children: [
                Icon(Icons.attachment,color: Colors.white,),
                SizedBox(
                  width: 10,
                ),
                Text("Add New Project",style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                ),
              ],
            ),
          ),
          ButtonPage_LOGIN_LOGOUT(
              fontSize: 15,
              buttonname: "Save",
              colorColor: Colors.blue,
              BordercolorColor: false,
              Colorr: Colors.white,
              onTap: ontap,

          ),
        ],
      ),
    );
  }
}
