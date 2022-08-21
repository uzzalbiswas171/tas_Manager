import 'package:flutter/material.dart';

class MyTask extends StatelessWidget {
  const MyTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white38,
      ),
      child: Column(
        children: [
          Expanded(
            flex:3,
            child:Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              // color:Colors.yellow
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_box_outlined,
                        color: Colors.white,
                        size: 22,
                      ),

                      SizedBox(width: 5,),
                      Text("Research Analysis",style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ],
                  ),

                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white70,
                      ),
                      child: Text("Urgent",style: TextStyle(
                        color: Colors.black,
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex:2,
            child:Container(
              child: Slider(
                  value: 50.00,
                  min: 1.00,
                  max: 100.0,
                  onChanged: (value){
                      value++;
                  }
              ),
              //  color:Colors.red,
            ),
          ),
          Expanded(
            flex:2,
            child:Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                left: 10,
              ),
              color:Colors.white12,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                  SizedBox(width: 10,),
                  Text("2 days left",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
