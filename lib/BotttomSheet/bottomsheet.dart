import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:flutter/material.dart';

class Bottomshee extends StatelessWidget {
  const Bottomshee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: baccolor,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.greenAccent[400],
              label: "My Task",
              icon:IconButton(
                icon: Icon(Icons.storefront,size: 25,color: Colors.white,),
                onPressed: (){

                },
              )),
          BottomNavigationBarItem(
              label: "Store",
              icon:IconButton(
                icon: Icon(Icons.pages,size: 25,color: Colors.white,),
                onPressed: (){

                },
              )),
          BottomNavigationBarItem(
              label: "Store",
              icon:IconButton(
                icon: Icon(Icons.camera_alt_outlined,size: 1,color: Colors.green,),
                onPressed: (){

                },
              )),



          BottomNavigationBarItem(
              label: "page",
              icon:IconButton(
                icon: Icon(Icons.pages_outlined,size: 25,color: Colors.white,),
                onPressed: (){

                },
              )),
          BottomNavigationBarItem(
              label: "notification",
              icon:IconButton(
                icon: Icon(Icons.notifications,size: 25,color: Colors.white,),
                onPressed: (){

                },
              ),
          ),
        ]
    );
  }
}
