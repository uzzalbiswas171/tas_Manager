import 'package:figma/SecondPage/2homepage.dart';
import 'package:figma/Text_Style_Font/text_style_font.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/slider.dart';
import 'package:flutter/material.dart';
class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Second2Page(),));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:baccolor,
     body: Container(
       height: double.infinity,
       width: double.infinity,
       child: Column(
         children: [
           Expanded(
             flex: 10,
               child: Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       color: Color(0xff292b3e),
                       height: 100,
                         width: 100,
                         child: Image.asset("img/group.png",width: 80,height: 80,),
                     ),
                     Text("RANANG",
                       style: MyTextStyle(33,
                         Color(0xffffffff),
                         FontWeight.w700,
                     ),),
                     Text("Your Personal Tas Manager",style: MyTextStyle(
                       12,
                       Color(0xffffffff)
                     ),)
                   ],
                 ),
               ),
           ),
           Expanded(
             flex: 2,
               child :InkWell(
                 onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Second2Page(),));
                 },
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(33)
                   ),
                   width: double.infinity,
                   margin: EdgeInsets.only(
                     right: 20,
                     left: 20,
                     bottom:10,
                     top: 40,
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Gatting Started",style:MyTextStyle(
                             22,Color(0xffFFFFFF)),),
                         Icon(Icons.arrow_forward_ios,color: Color(0xffFFFFFF),),
                       ],
                     ),
                   ),
                 ),
               ),
             ),
           Expanded(
             flex: 1,
            child:SliderPage(),
            ),
         ],
       ),
      ),
    );
  }
}
