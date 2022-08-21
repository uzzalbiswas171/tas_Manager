
import 'package:flutter/material.dart';

class ProjectTas_Page extends StatelessWidget {
  const ProjectTas_Page({Key? key,required this.Containercolors,required this.Review,this.Reviewtext}) : super(key: key);
  final Color? Containercolors;
  final String? Reviewtext;
  final String? Review;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 150,
      height: 50,
      padding: EdgeInsets.only(
        right: 50,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.white12,
      ),
      child: Row(
        children: [
          Expanded(
            flex:2,
            child: Container(
              margin: EdgeInsets.only(
                right: 15,
              ),
              height: 25,
              width: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Containercolors,

              ),
            ),
          ),

          Expanded(
            flex: 8,
            child: Container(
              child: Row(
                children: [
                  Text("${Review}",style: TextStyle(
                    color: Colors.white38,
                    fontSize: 18,
                  ),),
                  SizedBox(
                    width: 5,
                  ),
                  Text("${Reviewtext}",style: TextStyle(
                    color: Colors.white38,
                    fontSize: 15,
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
